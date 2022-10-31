package org.springframework.samples.game;

import java.time.Duration;
import java.util.Collection;
import java.util.Date;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

import org.springframework.samples.petclinic.model.BaseEntity;

import lombok.Getter;
import lombok.Setter;

@Entity
@Getter
@Setter
@Table(name = "games")
public class Game extends BaseEntity{

    @ManyToMany
    //Cambiar el String por la clase Player cuando este hecha
    private Collection<String> players;

    private Date date;
    private Duration duration;
    private String winnerName; 
    private List<Integer> Souls; 
    private List<Integer> Health; 
    
}
