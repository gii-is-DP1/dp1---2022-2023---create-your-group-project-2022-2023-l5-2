/*
 * Copyright 2002-2013 the original author or authors.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package org.springframework.samples.bossmonster.user;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 * @author Juergen Hoeller
 * @author Ken Krebs
 * @author Arjen Poutsma
 * @author Michael Isvy
 */
@Controller
public class UserController {

	private static final String VIEWS_USER_CREATE_FORM = "users/createUserForm";
	private static final String VIEWS_USER_EDIT_FORM = "users/editUserForm";
	private static final String USER_LISTING_VIEW="users/manageUsersListAdmin";
	private static final String VIEWS_USER_EDIT_FORM_ADMIN= "users/editUserAsAdmin";

	private final UserService userService;

	@Autowired
	public UserController(UserService userService) {
		this.userService = userService;
	}

	@InitBinder
	public void setAllowedFields(WebDataBinder dataBinder) {
		dataBinder.setDisallowedFields("id");
	}

	@GetMapping(value = "/users/new")
	public String initCreationForm(Map<String, Object> model) {
		User user = new User();
		model.put("user", user);
		return VIEWS_USER_CREATE_FORM;
	}

	@Transactional
	@PostMapping(value = "/users/new")
	public ModelAndView processCreationForm(@Valid User user, BindingResult br) {
		ModelAndView result;

		if (br.hasErrors()) {
			result = new ModelAndView(VIEWS_USER_CREATE_FORM);
			result.addObject("message", "Can't create user. Invalid values are present");
		}
		else if (userService.findUser(user.getUsername()).isPresent()) {
			//br.rejectValue("username", "This name is already used");
			result = new ModelAndView(VIEWS_USER_CREATE_FORM);
			result.addObject("message", "The username provided is already used");
		}
		else {
			result = new ModelAndView("welcome");
			userService.saveUser(user);
			result.addObject("message", "User succesfully created!");
		}
		return result;
	}

    @GetMapping(value = "/users/edit")
    public String initEditForm(Map<String, Object> model) {
		User loggedInUser = userService.getLoggedInUser().get();
		//model.addAttribute(loggedInUser);
		model.put("user", loggedInUser);
		return VIEWS_USER_EDIT_FORM;
    }

	@Transactional
	@PostMapping(value = "/users/edit")
	public ModelAndView processEditForm(@Valid User user, BindingResult br) {
		ModelAndView result;
		if (br.hasErrors()) {
			result = new ModelAndView(VIEWS_USER_EDIT_FORM);
			result.addObject("message", "Can't update user. Invalid values are present");
		}
		else {
			result = new ModelAndView("welcome");
			userService.saveUser(user);
			result.addObject("message", "User succesfully updated!");
		}
		return result;
	}

	@GetMapping("/admin/users")
	public ModelAndView getAllUsers(
		@RequestParam(defaultValue = "0") int page,
		@RequestParam(defaultValue = "3") int size
	){
		List<User> users = new ArrayList<User>();
		Pageable paging = PageRequest.of(page, size);
		Page<User> pageUsers;
		pageUsers = userService.getPageUsers(paging);
		users = pageUsers.getContent();
		ModelAndView result= new ModelAndView(USER_LISTING_VIEW);
		result.addObject("user", users);
		int numPages = userService.findAllUsers().size()/size;
		result.addObject("pageLimit", numPages%size==0?numPages-1:numPages);
		return result;
	}

	@Transactional
	@GetMapping("admin/users/{username}/delete")
    public ModelAndView delete(@PathVariable String username){
        userService.deleteUser(username);
        ModelAndView result= new ModelAndView("redirect:/admin/users?page=0");
        return result;
    }

	@GetMapping(value = "admin/users/{username}/edit")
    public String initEditFormAdmin(Map<String, Object> model,@PathVariable String username) {
		User loggedInUser = userService.findUser(username).get();
		model.put("user", loggedInUser);
		return VIEWS_USER_EDIT_FORM_ADMIN;
    }
	@Transactional
	@PostMapping(value = "admin/users/{username}/edit")
	public ModelAndView processEditFormAdmin(@Valid User user, BindingResult br, @PathVariable String username) {
		ModelAndView result;
		if (br.hasErrors()) {
			result = new ModelAndView(VIEWS_USER_EDIT_FORM_ADMIN);
			result.addObject("message", "Can't update user. Invalid values are present");
		}
		else {
			result = new ModelAndView("redirect:/admin/users?page=0");
			userService.saveUser(user);
			result.addObject("message", "User succesfully updated!");
		}
		return result;
	}

}
