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

unit spine.math;

interface

type
  TSpineMath = class
  public const
    PI2 = PI * 2;
    RadDeg = 180.0 / PI;
    DegRad = PI / 180;
    RadFull = PI * 2;
    DegFull = 360;
  public
    class function Sin(const radians: Single): Single; static;
    class function Cos(const radians: Single): Single; static;
    class function SinDeg(const degrees: Single): Single; static;
    class function CosDeg(const degrees: Single): Single; static;
    class function Atan2(const x,y: Single): Single; static;
    class function Clamp(const value, min, max: Single): Single; static;
  end;

implementation

{ TSpineMath }

class function TSpineMath.Atan2(const x, y: Single): Single;
var
  lAtan: Single;
  lZ: Single;
begin
  if x = 0 then
  begin
    if y > 0 then exit(PI / 2);
    if y = 0 then exit(0);
    exit(-PI / 2);
  end;
  lZ:= y / x;
  if Abs(lZ) < 1 then
  begin
    lAtan:= lZ / (1 + 0.28 * lZ * lZ);
    if x < 0 then
    begin
      if y < 0 then
        exit(lAtan - PI)
      else
        exit(lAtan + PI);
    end;
    exit(lAtan);
  end;
  lAtan:= PI / 2 - lZ / (lZ * lZ + 0.28);
  if y < 0 then
    result:= lAtan - PI
  else
    result:= lAtan;
end;

class function TSpineMath.Clamp(const value, min, max: Single): Single;
begin
  if value < min then exit(min);
  if value > max then exit(max);
  result:= value;
end;

class function TSpineMath.Cos(const radians: Single): Single;
begin
  result:= System.Cos(radians);
end;

class function TSpineMath.CosDeg(const degrees: Single): Single;
begin
  result:= System.Cos(degrees * DegRad);
end;

class function TSpineMath.Sin(const radians: Single): Single;
begin
  result:= System.Sin(radians);
end;

class function TSpineMath.SinDeg(const degrees: Single): Single;
begin
  result:= System.Sin(degrees * DegRad);
end;

end.