# Clarification: Mode-Specific HUD Adaptation

## Why adapt during the match?
End-match clarity is too late. Players need to understand whether a claim helps themselves alone or their team while making decisions.

## Does the HUD define game rules?
No. It displays match state owned by core match systems. It must not calculate legal wins independently.

## Where does the HUD sit in portrait?
The default plan is a top compact band below the safe area. If the playfield later requires more top space, a collapsible side/top chip layout can be used.

## Should 2v2 show personal claims during the match?
Yes, but as small contribution pips beneath team total. The team total stays primary.

## Should FFA show all four players during the match?
Yes. Hiding trailing players reduces comeback readability and weakens FFA context.

## How much animation is allowed?
Claim changes can pulse or fill pips. Animation must clarify state changes and avoid becoming reaction gameplay.

## How does this connect to leader threat indicators?
The HUD can reuse the leader threat visual language, but mode grouping controls whether the threat belongs to a team or individual.

## Localization Clarification
Mode labels should be short localized keys. Do not use English abbreviations like “FFA” as the only Arabic label.
