-- |
-- Module:      Test
-- Copyright:   (c) 2015 Mark Fine
-- License:     BSD3
-- Maintainer:  Mark Fine <mark@swift-nav.com>
--
-- Test module for RTCM3.

import           BasicPrelude
import qualified Test.Data.CRC24Q             as CRC24Q
import qualified Test.Data.RTCM3.Antennas     as Antennas
import qualified Test.Data.RTCM3.Extras       as Extras
import qualified Test.Data.RTCM3.Observations as Observations
import qualified Test.Data.RTCM3.System       as System
import           Test.Tasty

tests :: TestTree
tests =
  testGroup "Tests"
    [ CRC24Q.tests
    , Antennas.tests
    , Extras.tests
    , Observations.tests
    , System.tests
    ]

main :: IO ()
main = defaultMain tests
