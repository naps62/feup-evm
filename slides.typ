#import "@preview/touying:0.5.3": *
#import "@preview/codly:1.0.0": *
#import themes.dewdrop: *

#show: dewdrop-theme.with(
  aspect-ratio: "16-9",
  config-info(
    title: [EVM],
    subtitle: [An (advanced) introduction],
    author: [Miguel Palhas - \@naps62 - mpalhas at gmail dot com],
  ),
)
#show: codly-init.with()

#codly(
  display-icon: false,
  display-name: false,
  zebra-fill: none,
)

#title-slide()

= Hello world

```solidity
contract Counter {
  uint256 public value;

  constructor(uint256 _v) {
    v = _v;
  }

  function inc() external {
    v++;
  }
}
```
