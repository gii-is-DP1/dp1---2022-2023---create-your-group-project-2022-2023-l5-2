package org.springframework.samples.bossmonster.game;

import static org.junit.jupiter.api.Assertions.assertFalse;
import static org.junit.jupiter.api.Assertions.assertTrue;

import java.util.List;

import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.junit.jupiter.MockitoExtension;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.samples.bossmonster.game.card.finalBoss.FinalBossCard;
import org.springframework.samples.bossmonster.game.card.finalBoss.FinalBossCardRepository;
import org.springframework.samples.bossmonster.game.card.hero.HeroCard;
import org.springframework.samples.bossmonster.game.card.hero.HeroCardRepository;
import org.springframework.samples.bossmonster.game.card.room.RoomCard;
import org.springframework.samples.bossmonster.game.card.room.RoomCardRepository;
import org.springframework.samples.bossmonster.game.card.spell.SpellCard;
import org.springframework.samples.bossmonster.game.card.spell.SpellCardRepository;
import org.springframework.stereotype.Repository;

@ExtendWith(MockitoExtension.class)
@DataJpaTest(includeFilters = @ComponentScan.Filter(Repository.class))
public class CardRepositoriesTest {

    @Autowired
    HeroCardRepository heroCardRepo;
    @Autowired
    RoomCardRepository roomCardRepo;
    @Autowired
    SpellCardRepository spellCardRepo;
    @Autowired
    FinalBossCardRepository finalBossCardRepo;

    @Test
    @DisplayName("get heroes from DB")
    public void shouldReturnHeroCards() {
        List<HeroCard> cards = heroCardRepo.findAll();
        assertFalse(cards.isEmpty());
        assertTrue(cards.get(0) instanceof HeroCard);
    }

    @Test
    @DisplayName("get rooms from DB")
    public void shouldReturnRoomCards() {
        List<RoomCard> cards = roomCardRepo.findAll();
        assertFalse(cards.isEmpty());
        assertTrue(cards.get(0) instanceof RoomCard);
    }

    @Test
    @DisplayName("get spells from DB")
    public void shouldReturnSpellCards() {
        List<SpellCard> cards = spellCardRepo.findAll();
        assertFalse(cards.isEmpty());
        assertTrue(cards.get(0) instanceof SpellCard);
    }

    @Test
    @DisplayName("get bosses from DB")
    public void shouldReturnBossCards() {
        List<FinalBossCard> cards = finalBossCardRepo.findAll();
        assertFalse(cards.isEmpty());
        assertTrue(cards.get(0) instanceof FinalBossCard);
    }

}
