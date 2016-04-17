//
//  ESPN.swift
//  Sports
//
//  Created by Akshay Srivatsan on 4/16/16.
//  Copyright © 2016 Akshay Srivatsan. All rights reserved.
//

import Foundation

class ESPN {
    
    
    
    static var terms = [
        "mlb": [ "Appeal",  "At Bat",  "Balk",  "Ball",  "Base",  "Base Coach",  "Base on Balls",  "Bases Loaded",  "Batter",  "Batter's Box",  "Bunt",  "Catch",  "Catcher",  "Catcher's Interference",  "Count",  "Dead Ball",  "Double Play",  "Dugout",  "Fair Ball",  "Fair Territory",  "Fielder",  "Fielder's Choice",  "Fly Ball",  "Force Play",  "Foul Ball",  "Foul Territory",  "Foul Tip",  "Ground Ball",  "Infielder",  "Infield Fly",  "Inning",  "Live Ball",  "Line Drive",  "Manager",  "Obstruction",  "Offense",  "Offensive Interference",  "Out",  "Outfielder",  "Pitch",  "Pitcher",  "Run",  "Run-Down",  "Runner",  "Safe",  "Squeeze Play",  "Strike",  "Strike Zone",  "Suspended Game",  "Tag",  "Tag Up",  "Triple Play",  "Wild Pitch",  "Single",  "Double",  "Triple",  "Home Run",  "Grand Slam",  "Error",  "Run Batted In",  "Hit",  "Run Scored",  "Strike Out",  "Batting Average",  "On Base Percentage",  "Slugging Percentage",  "On Base Plus Slugging",  "Innings Pitched",  "Earned Runs",  "Earned Runs Average",  "Umpire",  "Pinch Hitter",  "Pinch Runner",  "Relief Pitcher",  "Stolen Base",  "Stole",  "Lined out",  "Popped out",  "Homered",  "Tripled",  "Double",  "Singled",  "Pitching",  "Catching",  "Reached",  "Relieved",  "Grounded out",  "Walked",  "Struck out",  "Flied out",  "Hit for"],
        "soccer": ["Goal Line", "Side Line", "Center Circle", "Kickoff", "Goal", "Thrown-In", "Goal Kick", "Corner Kick", "Free Kick", "Six Yard Box", "Eighteen Yard Box", "Penalty Kick", "Foul", "Yellow Card", "Red Card", "Goalkeeper", "Defender", "Midfielder", "Forward", "Direct Kick", "Indirect Kick", "Offside", "Handling", "Substitution", "Assist", "Save", "Block", "Header", "Through Ball", "Hand Ball", "Handle", "Corner", "Attempt", "Assisted", "Saved", "Blocked", "Headed", "Wing"],
        "nba": ["Two Pointer", "Three Pointer", "Three Point Line", "Free Throw", "Free Throw Line", "Personal Foul", "Shooting Foul", "Technical Foul", "Flagrant Foul", "Assist", "Rebound", "Block", "Steal", "Bonus", "Foul Out", "And One", "Field Goal", "Turnover", "Dunk", "Goaltending", "Jump Ball", "Shot Clock", "Buzzer Beater", "Rim", "Backboard", "Shot", "Timeout", "Screen", "Substitution", "Layup", "Blocked Shot", "Foul", "Techincal", "Jumper", "Three Point Jumper", "Jumpshot", "Steals", "Assists", "Blocks", "Pick", "Enters The Game"],
        "nhl": ["Penalty Box","Minor Penalty","Charging","Clipping","Cross-checking","Diving","Delay of game","Elbowing","Goaltender interference","High-sticking","Holding","Holding the stick","Hooking","Interference","Kneeing","Roughing","Slashing","Tripping","Unsportsmanlike conduct","Abuse of officials","Too many men on the ice","Major Penalty","Boarding","Butt-ending","Checking from behind","Fighting","Misconduct Penalty","Icing","Shot","Save","Period","Power Play","Shorthanded","Full Strength","Faceoff","Check","Block","Turnover","Offside","Red Line","Blue Line","Goal Line","Faceoff Spot","Substitution","Goaltender","Empty Net","Saved","Hit","Blocked","Giveaway","Penalty Kill","Offsides"]
    ]
    
    
    static let definitions = [
        "mlb": ["Appeal": "The act of a fielder in claiming violation of the rules by the offensive team.", "At Bat": "The duration of a player's turn batting until either reaching base or getting out. Does not include base on balls, hit by pitch, sacrifice, or reaching base on defensive interference.", "Balk": "An illegal act by the pitcher with a runner or runners on base, entitling all runners to advance one base.", "Ball": "A pitch which does not enter the strike zone in flight and is not struck at by the batter. If the pitch touches the ground and bounces through the strike zone it is a “ball.”", "Base": "One of four points which must be touched by a runner in order to score a run; more usually applied to the canvas bags and the rubber plate which mark the base points.", "Base Coach": "A team member in uniform who is stationed in the coach’s box at first or third base to direct the batter and the runners.", "Base on Balls": "An award of first base granted to a batter who, during his time at bat, receives four pitches outside the strike zone.", "Bases Loaded": "When there are three runners on base; one on first base, one on second base, and one on third base.", "Batter": "An offensive player who takes his position in the batter’s box.", "Batter's Box": "The area within which the batter shall stand during his time at bat.", "Bunt": "A batted ball not swung at, but intentionally met with the bat and tapped slowly within the infield.", "Catch": "The act of a fielder in getting secure possession in his hand or glove of a ball in flight and firmly holding it; providing he does not use his cap, protector, pocket or any other part of his uniform in getting possession. It is not a catch, however, if simultaneously or immediately following his contact with the ball, he collides with a player, or with a wall, or if he falls down, and as a result of such collision or falling, drops the ball.", "Catcher": "The fielder who takes his position back of the home base to receive pitches from the pitcher.", "Catcher's Interference": "An act by the catcher that hinders or prevents a batter from hitting a pitch.", "Count": "The amount of balls and strikes thrown by the pitcher to a batter.", "Dead Ball": "A ball out of play because of a legally created temporary suspension of play granted by the umpire.", "Double Play": "A play by the defense in which two offensive players are put out as a result of continuous action, providing there is no error between putouts.", "Dugout": "The seating facilities reserved for players, substitutes and other team members in uniform when they are not actively engaged on the playing field.", "Fair Ball": "A hit ball that lands between the foul lines, making it a live ball, or in play for defenders to field. The ball must either end up in fair territory, or must pass first base or third base in fair territory before going foul.", "Fair Territory": "That part of the playing field within, and including the first base and third base lines, from home base to the bottom of the playing field fence and perpendicularly upwards. All foul lines are in fair territory.", "Fielder": "Any defensive player.", "Fielder's Choice": "The act of a fielder who handles a fair grounder and, instead of throwing to first base to put out the batter-runner, throws to another base in an attempt to put out a preceding runner.", "Fly Ball": "A batted ball that goes high in the air in flight", "Force Play": "A play in which a runner legally loses his right to occupy a base by reason of the batter becoming a runner", "Foul Ball": "A ball that lands in foul territory or that goes into foul territory before passing first base or third base, automatically deemed a dead ball. If the batter has less than two strikes, a strike is added. Otherwise, the count stays the same.", "Foul Territory": "That part of the playing field outside the first and third base lines extended to the fence and perpendicularly upwards.", "Foul Tip": "A batted ball that goes sharp and direct from the bat to the catcher’s hands and is legally caught. It is not a foul tip unless caught and any foul tip that is caught is a strike, and the ball is in play.", "Ground Ball": "A batted ball that rolls or bounces close to the ground.", "Infielder": "A fielder who occupies a position in the infield.", "Infield Fly": "A fair fly ball (not including a line drive nor an attempted bunt) which can be caught by an infielder with ordinary effort, when first and second, or first, second and third bases are occupied, before two are out. The pitcher, catcher and any outfielder who stations himself in the infield on the play shall be considered infielders for the purpose of this rule. The ball is alive and runners may advance at the risk of the ball being caught, or retouch and advance after the ball is touched, the same as on any fly ball. If the hit becomes a foul ball, it is treated the same as any foul.", "Inning": "That portion of a game within which the teams alternate on offense and defense and in which there are three putouts for each team. Each team’s time at bat is a half-inning.", "Live Ball": "A ball which is in play.", "Line Drive": "A batted ball that goes sharp and direct from the bat to a fielder without touching the ground.", "Manager": "A person appointed by the club to be responsible for the team’s actions on the field, and to represent the team in communications with the umpire and the opposing team.", "Obstruction": "The act of a fielder who, while not in possession of the ball and not in the act of fielding the ball, impedes the progress of any runner.", "Offense": "The team, or any player of the team, at bat.", "Offensive Interference": "An act by the team at bat which interferes with, obstructs, impedes, hinders or confuses any fielder attempting to make a play.", "Out": "One of the three required retirements of an offensive team during its time at bat.", "Outfielder": "A fielder who occupies a position in the outfield, which is the area of the playing field most distant from home base.", "Pitch": "A ball delivered to the batter by the pitcher.", "Pitcher": "The fielder designated to deliver the pitch to the batter.", "Run": "The score made by an offensive player who advances from batter to runner and touches first, second, third and home bases in that order.", "Run-Down": "The act of the defense in an attempt to put out a runner between bases.", "Runner": "An offensive player who is advancing toward, or touching, or returning to any base.", "Safe": "A declaration by the umpire that a runner is entitled to the base for which he was trying.", "Squeeze Play": "A term to designate a play when a team, with a runner on third base, attempts to score that runner by means of a bunt.", "Strike": "A legal pitch when so called by the umpire, which: (a) Is struck at by the batter and is missed; (b) Is not struck at, if any part of the ball passes through any part of the strike zone; (c) Is fouled by the batter when he has less than two strikes; or (d) Is bunted foul.", "Strike Zone": "That area over home plate the upper limit of which is a horizontal line at the midpoint between the top of the shoulders and the top of the uniform pants, and the lower level is a line at the hollow beneath the kneecap. The Strike Zone shall be determined from the batter’s stance as the batter is prepared to swing at a pitched ball.", "Suspended Game": "A called game which is to be completed at a later date.", "Tag": "The action of a fielder in touching a base with his body while holding the ball securely and firmly in his hand or glove; or touching a runner with the ball, or with his hand or glove holding the ball, while holding the ball securely and firmly in his hand or glove.", "Tag Up": "The act of a runner in returning to a base as legally required.", "Triple Play": "A play by the defense in which three offensive players are put out as a result of continuous action, providing there is no error between putouts.", "Wild Pitch": "A pitch so high, so low, or so wide of the plate that it cannot be handled with ordinary effort by the catcher.", "Single": "A one base hit.", "Double": "A two base hit.", "Triple": "A three base hit.", "Home Run": "A hit where the hitter touches all four bases, almost always because the ball is hit over the outfield wall in fair territory.", "Grand Slam": "A home run with the bases loaded.", "Error": "An act, in the judgment of the official scorer, of a fielder misplaying a ball in a manner that allows a batter or baserunner to advance one or more bases or allows an at bat to continue after the batter should have been put out.", "Run Batted In": "A run that scores due to a hit or other action by the batter, except in the case of a defensive error. It is credited to the batter.", "Hit": "A batted ball where the batter safely reaches first, except in the case of a defensive error.", "Run Scored": "When a runner scores a run.", "Strike Out": "When a batter obtains a third strike, resulting in an out.", "Batting Average": "The number of hits divided by the number of at bats.", "On Base Percentage": "The number of time a batter succesfully reaches base divided by the number of plate appearances.", "Slugging Percentage": "The total number of bases a batter has reached safely divided by the number of at bats.", "On Base Plus Slugging": "The on base percentage add to the slugging percentage.", "Innings Pitched": "The number of innings a pitcher has pitched.", "Earned Runs": "The number of runs a pitcher has given up not due to a defensive error.", "Earned Runs Average": "The number of earned runs per inning, calculated by the total number of earned runs divided by nine innings.", "Umpire": "The official who watches a game or match closely to enforce the rules and arbitrate on matters arising from the play.", "Pinch Hitter": "A substitute player who hits in place of the current batter.", "Pinch Runner": "A substitute player who runs in place of a current runner.", "Relief Pitcher": "A substitue player who pitches in place of, or relief of, the current pitcher.", "Stolen Base": "When a runner advances a base before the pitcher throws a pitch.", "Stole": "See stolen base.", "Lined out": "See line drive, out.", "Popped out": "See fly ball, out.", "Homered": "See home run.", "Tripled": "See triple.", "Doubled": "See double.", "Singled": "See single.", "Pitching": "See pitcher.", "Catching": "See catcher.", "Reached": "See hit.", "Relieved": "See relief pitcher.", "Grounded out": "See ground ball, out.", "Walked": "See base on balls.", "Struck out": "See strike out.", "Flied out": "See fly ball, out.", "Hit for": "See pinch hitter.", "HR": "See home run.", "iBB": "See intentional base on balls.", "BB": "See base on balls.", "AB": "See at bat.", "RBI": "See run batted in.", "H": "See hit.", "R": "See run scored.", "SO": "See strike out.", "BA": "See batting average.", "Avg": "See batting average.", "OBP": "See on base percentage.", "SLG": "See slugging percentage.", "OPS": "See on base plus slugging.", "IP": "See innings pitched.", "ER": "See earned runs.", "ERA": "See earned runs average."],
        "soccer": ["Goal Line": "The line at the end of the field that marks the field of play on which the goals are situated.", "Side Line": "The line on the side of the field that marks the field of play.", "Center Circle": "The circle at the center of the field. All opponents must stay outside the circle during a kickoff.", "Kickoff": "The way of started play at the beginning of each half and after a goal is scored. All players must stand on their own half, and all opponent must stand outside the center circle, while the ball is kicked in a forward direction.", "Goal": "When the ball fully crosses the goal line within the goalposts and under the crossbar.", "Thrown-In": "The act of throwing the ball from the sideline to restart play after the ball has gone out of bounds.", "Goal Kick": "A free kick taken by the defending side from within their six yard box after the ball crosses the end line not in the goal, last touched by the attacking team.", "Corner Kick": "A free kick taken by the attacking side from the corner of the field after the ball crosses the end line not in the goal, last touched by the defending team.", "Free Kick": "An unimpeded kick of the stationary ball awarded to one side as a penalty for a foul or infringement by the other side.", "Six Yard Box": "A rectangle within six yards of the goal on the goal line. The area from which a goal kick must be taken.", "Eighteen Yard Box": "A rectangle within eighteen yards of the goal on the goal line. The area in which the goalkeeper is allowed to use his hands.", "Penalty Kick": "Awarded when a foul is committed by the defedning team within their own eighteen yard box, a free kick taken from twelve yards away from the goal in which all other players, except the opposing goalkeeper, must stay outside the eighteen yard box and at least ten yards away. Any shot that goes in the goal counts as a goal.", "Foul": "A direct free kick is awarded when a player: Kicks or attempts to kick an opponent, trips or attempts to trip an opponent, jumps at an opponent, charges an opponent, strikes or attempts to strike an opponent, pushes an opponent, tackles an opponent, holds an opponent, spits at an opponent, or handles the ball deliberately.", "Yellow Card": "Awarded as a caution or warning to a player for a serious foul.", "Red Card": "Shown to a player to eject him for a serious foul or misconduct. The players team must play the remainder of the game with one less player.", "Goalkeeper": "The lone player who is allowed to handle the ball, but only while in his own eighteen yard box.", "Defender": "A player whose primary role is to prevent the opposing team from scoring.", "Midfielder": "A player who both defends the opposing team and attacks the opposing goal.", "Forward": "A player whose primary role is to score on the opposing team.", "Direct Kick": "A free kick that can be shot directly into the opponent’s goal without touching another player. The ball must be stationary.", "Indirect Kick": "A free kick that can only go into the goal if it has subsequently been touched by another player before it enters the goal. The ball must be stationary.", "Offside": "When an attacking player receives the ball while on his opponents half from a teammate, he must be level or behind the second to last defender (the last typically being the goalkeeper). However, this rule only applies if he is involved with the play.", "Handling": "When the direction or flight of the ball is changed because of direct contact with any part of the arm below the shoulder.", "Substitution": "When a player on the bench replaces a player currently in the game. Each team is allowed three substitutions per game.", "Assist": "Awarded to the player that passes to the player who scores, given that the pass contributes to the goal scored.", "Save": "For a goalkeeper to stop a shot from going in the goal.", "Block": "For a defender to legally (without the use of hands) stop a shot from going in the goal.", "Header": "To strike the ball with the head.", "Through Ball": "A pass that is meant to lead a teammate onto the ball away from a defender.", "Hand Ball": "See handling.", "Handle": "See handling.", "Corner": "See corner kick.", "Attempt": "See shot.", "Assisted": "See assist.", "Saved": "See save.", "Blocked": "See block.", "Headed": "See header.", "Penalty": "See penalty kick.", "Wing": "The outer parts of the attacking third of the field."],
        "nba": ["Two Pointer": "A shot that goes through the basket when shot within or on the three point line.", "Three Pointer": "A shot that goes through the basket when shot from outside the three point line.", "Three Point Line": "An arc around the basketball that marks the minimum distance from which a shot must be taken and made to score three points.", "Free Throw": "Awarded after a shooting foul or after a regular foul when the player's team is in the bonus. Each free throw is worth one point.", "Free Throw Line": "The line from which the free throw shooter must stand behind.", "Personal Foul": "A breach of the rules that concerns illegal personal contact with an opponent. Awarded possession of the ball from out of bounds or, if the team is in the bonus, two free throws.", "Shooting Foul": "A player fouled in the act of shooting. The player receives as many free throws as the point value of the shot he attempted.", "Technical Foul": "Any infraction of the rules penalized as a foul which does not involve physical contact during the course of play between opposing players on the court, most commonly unsportsmanlike conduct.", "Flagrant Foul": "A foul that involves excessive or violent contact that could injure the fouled player", "Assist": "Attributed to a player who passes the ball to a teammate in a way that leads to a score by field goal.", "Rebound": "To grab and rettain possession of the ball after a missed shot.", "Block": "When a defensive player legally deflects a field goal attempt from an offensive player.", "Steal": "To cause a turnover by the opponent by deflecting or catching the ball when on defense.", "Bonus": "If a team commits at least five fouls in a quarter, excepting offensive fouls, each foul including and after the fifth, whether or not it is a shooting foul, will result in two free throws (or three in the case of a shooting foul on a three point shot attempt).", "Foul Out": "If a player commits six fouls in a game, he must immediately be substituted out and may not return for the remainder of the game.", "And One": "When a shooting foul is commited and the shooter still makes the shot, and shooter receives one free throw shot.", "Field Goal": "A shot from anywhere on the floor, not including free throws.", "Turnover": "To lose possession of the ball to the other team.", "Dunk": "To throw the ball into the basket from above the rim.", "Goaltending": "A violation in which a defensive player interferes with a shot when it is on its downward arc or is on or over the rim.", "Jump Ball": "A start or restart in play where the referee throws the ball straight up between two opposing players while all other players stand outside the circle. Used either to start a game, start an overtime period, or to settle a tie-up, where two or more players from opposing teams have equal possession of the ball.", "Shot Clock": "A twenty four second period in which the team with possession must shoot the ball, defined by the ball touching the rim. If the team fails to shoot within twenty four seconds, possession is awarded to the opposing team.", "Buzzer Beater": "A shot that is released from the shooter's hands before the final buzzer (referring to either the shot clock or game clock running out), but goes through the basket after the buzzer.", "Rim": "The round part that defines the perimeter of the basket.", "Backboard": "The Plexiglass rectangle behind the rim. All balls that hit off the backboard (unless the backside) are in play.", "Shot": "An attempt to put the ball through the basket in order to score points.", "Timeout": "A stoppage in play, called for by either a coach or a play. Timeouts can only be called when the team has possession of the ball. Each team has one twenty second timeout per half, and six total full (sixty second) timeouts.", "Screen": "When a player on the attacking team positions his body to physically impede a defending player in order to free up a teammate. Any screen set by a player who is not stationary will be called an offensive foul.", "Substitution": "When a bench player enters the game to replace a player currently in the game. There is no limit to the number of substitutions, and all substitutions must be made during a dead ball situation.", "Layup": "A shot attempt taken near the basket.", "Blocked Shot": "See block.", "Foul": "See personal foul.", "Techincal": "See techincal foul.", "Jumper": "See shot.", "Three Point Jumper": "See three pointer, shot.", "Jumpshot": "See shot.", "Steals": "See steal.", "Assists": "See assist.", "Blocks": "See block.", "Pick": "See screen.", "Enters The Game": "See substitution."],
        "nhl": ["Penalty Box": "Where players who receive a penalty must wait until the penalty is over.","Minor Penalty": "The least severe type of penalty in which the offending player must sit in the penalty box for two minutes of game time and his team must have one less player on the ice until the penalty is over.","Charging": "Taking more than three strides or jumping before hitting an opponent.","Clipping": "Delivering a check below the knees of an opponent. If injury results, a major penalty and a game misconduct will result.","Cross-checking": "Hitting an opponent with the stick when it is held with two hands and no part of the stick is on the ice.","Diving": "Falling to the ice after a hit, exaggerating the effect of the hit in an attempt to draw a penalty for the opposing team.","Delay of game": "Stalling the game.","Elbowing": "Hitting an opponent with the elbow.","Goaltender interference": "Physically impeding or checking the goalie. Visually impeding the goalie's view of the play with the body, called screening, is legal; but at no time may a goaltender be hit or checked.","High-sticking": "Touching an opponent with the stick above shoulder level. If blood is drawn, a double-minor (4 minutes) is usually called.","Holding": "Grabbing an opponent's body, equipment or clothing with the hands or stick.","Holding the stick": "Grabbing and holding an opponent's stick.","Hooking": "Using a stick as a hook to slow an opponent.","Interference": "Impeding an opponent who does not have the puck, or impeding any player from the bench.","Kneeing": "Hitting an opponent with the knee.","Roughing": "Pushing and/or shoving after the whistle has been blown or when it takes place away from the play.","Slashing": "Swinging a stick at an opponent.","Tripping": "Using a stick or one's body to trip an opponent","Unsportsmanlike conduct": "Arguing with a referee; using slurs against an opponent or teammate; playing with illegal equipment; making obscene gestures or abusing an official.","Abuse of officials": "Arguing with, insulting, using obscene gestures or language directed at or in reference to, or deliberately making violent contact with any on or off-ice official.","Too many men on the ice": "Having more than the allowable number of players on the ice involved in the play at any given time.","Major Penalty": "A major penalty is a stronger degree of penalty for a more severe infraction of the rules than a minor.","Boarding": "Pushing an opponent violently into the boards while the player is facing the boards.","Butt-ending": "Jabbing an opponent with the end of the shaft of the stick.","Checking from behind": "Hitting an opponent from behind.","Fighting": "Engaging in a physical altercation with an opposing player, usually involving the throwing of punches with gloves removed or worse.","Misconduct Penalty": "A player who receives a misconduct penalty will remain off the ice for ten minutes.","Icing": "Where a player hits a puck from his own half of the rink across at least the red line, the opposing blue line, and the opposing goal line (but not in the goal) and a defensive player reaches his own faceoff circle before a teammate of the player who just hit the puck can. The faceoff is taken from the nearest faceoff spot to where the puck was hit, and the offending team cannot make any substitutions (whereas the defending team can).","Shot": "A hit puck towards the goal with the intent of scoring a goal.","Save": "A stop made by the goaltender to prevent a goal.","Period": "Three twenty minute periods make one game.","Power Play": "When the opposing team has one or more players in the penalty box and the offensive team has at least a one man advantage.","Shorthanded": "When the defending team has one or more players in the penalty box and the defensive team has at least a one man disadvantage.","Full Strength": "When both teams have an equal number of players on the ice.","Faceoff": "The mode of starting or restarting play after every goal and other stoppage in play. The referee drops the puck onto the playoff spot, where one player from each team try to gain possession of the puck. All other players must stand outside the faceoff circle.","Check": "A player drives the shoulder, upper arm, hip and elbow equally into the opponent to separate them from the puck, using the body to knock an opponent against the boards or to the ice. It is only permitted against an opponent with possession of the puck","Block": "A shot or pass that a defensive player disrupts using his hand, skate, or any other part of his body.","Turnover": "A loss of possession of the puck to the opposing team.","Offside": "When a player on the attacking team crosses the blue line and enters the offensive zone before the puck, resulting in a stoppage in play and a subsequent faceoff.","Red Line": "The line separating the two halves of the rink.","Blue Line": "The line denoting the offensive zone, across which offsides can occur.","Goal Line": "The line on which the goal is situated. Players can go behind the goal line.","Faceoff Spot": "The spot on which a faceoff is taken. There are nine such spots on a hockey rink.","Substitution": "Substitutions are rolling, with no formal checking in process. The only time substitutions are not allowed is after icing is called.","Goaltender": "The player who prevents opposing players from scoring.","Empty Net": "When a team pulls their goaltender to allow an extra skater on the ice, usually used as a last minute attempt to score a goal.","Saved": "See save.","Hit": "See check.","Blocked": "See block.","Giveaway": "See turnover.","Penalty Kill": "See shorthanded.","Offsides": "See offside."]
    ]
    
    static let images: [String: [String: (String, String)]] = [
        "mlb": ["Base Coach": ("https://upload.wikimedia.org/wikipedia/commons/thumb/b/ba/20120801_Pat_Listach_as_third_base_coach.JPG/800px-20120801_Pat_Listach_as_third_base_coach.JPG", "TonyTheTiger (wikipedia)"),"Batter": ("https://upload.wikimedia.org/wikipedia/commons/thumb/7/7a/David-ortiz-batters-box.JPG/1920px-David-ortiz-batters-box.JPG", "Albert Yau (flickr)"),"Bunt": ("https://upload.wikimedia.org/wikipedia/commons/thumb/a/aa/Jerry_Hairston_bunt_%283557792864%29.jpg/1380px-Jerry_Hairston_bunt_%283557792864%29.jpg", "SD Dirk (flickr)"),"Catcher": ("https://upload.wikimedia.org/wikipedia/commons/4/45/Alex_Avila_2010.jpg", "Michael Tipton (flickr)"),"Pitcher": ("https://upload.wikimedia.org/wikipedia/commons/thumb/a/a4/Zack_Greinke_on_July_29%2C_2009.jpg/1920px-Zack_Greinke_on_July_29%2C_2009.jpg", "Keith Allison (flickr)"),"Strike Zone": ("https://upload.wikimedia.org/wikipedia/commons/8/89/Strike_zone_en.JPG", "Mori Chan (flickr)")],
        "soccer": ["Kickoff": ("https://upload.wikimedia.org/wikipedia/commons/thumb/3/3a/Dzeko_kickoff.jpg/1920px-Dzeko_kickoff.jpg", "Jon Candy (flickr)"), "Corner Kick": ("https://upload.wikimedia.org/wikipedia/commons/7/70/Cornerkick.jpg", "Johann Elisson (wikipedia)"), "Penalty Kick": ("https://upload.wikimedia.org/wikipedia/commons/thumb/d/d3/Ivory_Coast_penalty.jpg/1600px-Ivory_Coast_penalty.jpg", "Björn Láczay (flickr)"), "Yellow Card": ("https://farm7.staticflickr.com/6097/6247086350_e4a5400900_o_d.jpg", "Jon Candy (flickr)"), "Offside": ("https://upload.wikimedia.org/wikipedia/commons/thumb/9/96/Offsidelarge.svg/500px-Offsidelarge.svg.png", "NielsF (wikipedia)"), "Goal": ("https://upload.wikimedia.org/wikipedia/commons/b/b8/Turquoise.pebble.700pix.jpg", "Beta")],
        "nba": [:],
        "nhl": [:]
    ]
    
    static let replacements = [
        "&#225;": "á",
        "&#201;": "É",
        "&#233;": "é",
        "&#237;": "í",
        "&#243;": "ó",
        "&#250;": "ú",
        "&#241;": "ñ",
        "&#227;": "ã",
        "&#252;": "ü",
        "&#231;": "ç",
        "&#246;": "ö"
    ]
    
    
    static func getCurrentJSON(callback: [String:AnyObject]? -> ()) {
        NSURLSession.sharedSession().dataTaskWithURL(NSURL(string: "http://scores.espn.go.com/sports/scores/feed")!, completionHandler: {(data, response, error) -> Void in
            if error == nil && data != nil {
                do {
                    let json = try NSJSONSerialization.JSONObjectWithData(data!, options: NSJSONReadingOptions.MutableContainers) as! [String:AnyObject]
                    callback(json)
                } catch {
                    callback(nil)
                }
            }
        }).resume()
    }
    
    static func getJSONForSport(sport: Int, callback: [AnyObject]? -> ()) {
        NSURLSession.sharedSession().dataTaskWithURL(NSURL(string: "http://scores.espn.go.com/sports/scores/feed")!, completionHandler: {(data, response, error) -> Void in
            if error == nil && data != nil {
                do {
                    let json = try NSJSONSerialization.JSONObjectWithData(data!, options: NSJSONReadingOptions.MutableContainers) as! [String:AnyObject]
                    var arr = [AnyObject]()
                    for event in json["comments"] as! [AnyObject] {
                        if (event["sportId"] as? Int) == sport {
                            arr.append(event);
                        }
                    }
                    callback(arr)
                } catch {
                    callback(nil)
                }
            }
        }).resume()
    }
    
    static func getJSONForEvent(id: String, callback: ([AnyObject]?) -> ()) {
        NSURLSession.sharedSession().dataTaskWithURL(NSURL(string: "http://scores.espn.go.com/sports/scores/feed")!, completionHandler: {(data, response, error) -> Void in
            if error == nil && data != nil {
                do {
                    let json = try NSJSONSerialization.JSONObjectWithData(data!, options: NSJSONReadingOptions.MutableContainers) as! [String:AnyObject]
                    var arr = [AnyObject]()
                    for event in json["comments"] as! [AnyObject] {
                        if (event["key"] as? String)?.rangeOfString(id) != nil && event["title"] as? String != "Status Update" {
                            arr.append(event);
                        }
                    }
                    callback(arr)
                } catch {
                    callback(nil)
                }
            }
        }).resume()
    }
    
    static func getCurrentGames(sport: String, callback: ([String: String]?) -> ()) {
        let url = "http://scores.espn.go.com/aggregator/cached/tea/feed"
        NSURLSession.sharedSession().dataTaskWithURL(NSURL(string: url)!, completionHandler: {(data, response, error) -> Void in
            if error == nil && data != nil {
                do {
                    let json = try NSJSONSerialization.JSONObjectWithData(data!, options: NSJSONReadingOptions.MutableContainers) as! [String:AnyObject]
                    var retval = [String: String]()
                    let sports = json["sports"]!
                    var thisSport: AnyObject? = nil
                    for aSport in (sports as! [AnyObject]) {
                        if ((aSport["sport"] as! String) == sport) {
                            thisSport = aSport
                            break
                        }
                    }
                    for league in (thisSport as! [String: AnyObject])["leagues"] as! [AnyObject] {
                        for game in (league as! [String: AnyObject])["games"] as! [AnyObject] {
                            let gameData = game as! [String: AnyObject]
                            let id = gameData["gameId"] as! Int
                            var home = (gameData["home"] as! [String: AnyObject])["name"] as! String
                            var away = (gameData["away"] as! [String: AnyObject])["name"] as! String
                            
                            for (key, value) in replacements {
                                home = home.stringByReplacingOccurrencesOfString(key, withString: value)
                                away = away.stringByReplacingOccurrencesOfString(key, withString: value)
                            }
                            
                            let status = (gameData["status"] as! Int)
                            if (status == 2) {
                                if (sport == "soccer") {
                                    retval.updateValue(home + " vs. " + away, forKey: String(id))
                                } else {
                                    retval.updateValue(away + " vs. " + home, forKey: String(id))
                                }
                            }
                        }
                    }
                    callback(retval)
                } catch {
                    callback(nil)
                }
            }
        }).resume()
    }
    
    static func addLinks(sport: String, inputText: String) -> String {
        terms[sport]!.sortInPlace { (e1, e2) -> Bool in
            return e1.characters.count > e2.characters.count
        }
        var text = inputText;
        var retval = "";
        while text != "" {
            var matched = false;
            for term in terms[sport]! {
                let matchRange = text.lowercaseString.rangeOfString(term.lowercaseString)
                if matchRange?.startIndex == text.startIndex {
                    if (matchRange?.endIndex != text.endIndex && text[matchRange!.endIndex] != " "  && text[matchRange!.endIndex] != "."  && text[matchRange!.endIndex] != ",") {
                        continue
                    }
                    var ch = "";
                    if (matchRange?.endIndex != text.endIndex) {
                        ch = String(text[matchRange!.endIndex])
                    }
                    let rawTerm = text.substringWithRange(matchRange!)
                    text.removeRange(matchRange!)
                    if text != "" {
                        text.removeRange(Range(start: text.startIndex, end: text.startIndex.successor()))
                    }
                    let html = "<a href=\"\(term)\">\(rawTerm)</a>" + ch
                    retval += html
                    matched = true
                    break
                }
            }
            if (!matched) {
                if let nextSpace = text.rangeOfString(" ") {
                    retval += text.substringToIndex(nextSpace.endIndex);
                    text.removeRange(Range(start: text.startIndex, end: nextSpace.endIndex))
                } else {
                    retval += text
                    text = ""
                }
            }
        }
        print(images[sport]?[inputText])
        
        return retval;
    }
    
    static func getImage(sport: String, title: String) -> String? {
//        if let (url, credit) = images[sport]?[title] {
//            print(url)
//            return("<img src=\"\(url)\" width='100%'/><p>Image Credit: \(credit)</p>")
//        }
        return nil;
    }
    
    static func getDescription(sport: String, title: String) -> String? {
        if !terms[sport]!.contains(title) {
            return nil
        }
        else {
            if let definition = definitions[sport]![title] {
                return addLinks(sport, inputText: definition);
            } else {
                return nil
            }
        }
    }
    
    static func fixText(text: String?) -> String? {
        var varText = text
        for (key, value) in replacements {
            varText = varText?.stringByReplacingOccurrencesOfString(key, withString: value)
        }
        return varText
    }


}