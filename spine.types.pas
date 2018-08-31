{******************************************************************************}
{                                                                              }
{       SE Network Spine for Delphi                                            }
{                                                                              }
{       Generic delphi runtime v3.6 for Spine animation tool                   }
{                                                                              }
{       Copyright (c) 2018 looper(2031056602@qq.com)                           }
{                                                                              }
{       Source: https://github.com/looper/Spine-for-Delphi                     }
{       Homepage: http://www.asphyre.cn                                        }
{                                                                              }
{******************************************************************************}

unit spine.types;

interface

type
  TPageFormat        = (pfAlpha,
                        pfIntensity,
                        pfLuminanceAlpha,
                        pfRGB565,
                        pfRGBA4444,
                        pfRGB888,
                        pfRGBA8888
                        );

  TPageTextureFilter = (ptfNearest,
                        ptfLinear,
                        ptfMipMap,
                        ptfMipMapNearestNearest,
                        ptfMipMapLinearNearest,
                        ptfMipMapNearestLinear,
                        ptfMipMapLinearLinear
                        );

  TPageTextureWrap   = (ptwMirroredRepeat,
                        ptwClampToEdge,
                        ptwRepeat
                        );

  TAttachmentType    = (atRegion,
                        atBoundingbox,
                        atMesh,
                        atLinkedmesh,
                        atPath,
                        atPoint,
                        atClipping
                        );

  TTransformMode     = (tmNormal = 0,                 // 0000
                        tmOnlyTranslation = 7,        // 0111
                        tmNoRotationOrReflection = 1, // 0001
                        tmNoScale = 2,                // 0010
                        tmNoScaleOrReflection = 6     // 0110
                        );

  TBlendMode         = (bmNormal,
                        bmAdditive,
                        bmMultiply,
                        bmScreen
                        );

  TPositionMode      = (pmFixed,
                        pmPercent
                        );

  TSpacingMode       = (smLength,
                        smFixed,
                        smPercent
                        );

  TRotateMode        = (rmTangent,
                        rmChain,
                        rmChainScale
                        );

  TMixPose           = (mpSetup,
                        mpCurrent,
                        mpCurrentLayered
                        );

  TMixDirection      = (mdIn,
                        mdOut
                        );

  TTimelineType      = (ttRotate = 0,
                        ttTranslate,
                        ttScale,
                        ttShear,
                        ttAttachment,
                        ttColor,
                        ttDeform,
                        ttEvent,
                        ttDrawOrder,
                        ttIkConstraint,
                        ttTransformConstraint,
                        ttPathConstraintPosition,
                        ttPathConstraintSpacing,
                        ttPathConstraintMix,
                        ttTwoColor
                        );

implementation

end.