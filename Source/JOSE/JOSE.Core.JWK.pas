{******************************************************************************}
{                                                                              }
{  Delphi JOSE Library                                                         }
{  Copyright (c) 2015 Paolo Rossi                                              }
{  https://github.com/paolo-rossi/delphi-jose-jwt                              }
{                                                                              }
{******************************************************************************}
{                                                                              }
{  Licensed under the Apache License, Version 2.0 (the "License");             }
{  you may not use this file except in compliance with the License.            }
{  You may obtain a copy of the License at                                     }
{                                                                              }
{      http://www.apache.org/licenses/LICENSE-2.0                              }
{                                                                              }
{  Unless required by applicable law or agreed to in writing, software         }
{  distributed under the License is distributed on an "AS IS" BASIS,           }
{  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.    }
{  See the License for the specific language governing permissions and         }
{  limitations under the License.                                              }
{                                                                              }
{******************************************************************************}

/// <summary>
///   JSON Web Key (JWK) RFC implementation (partial)
/// </summary>
/// <seealso href="https://tools.ietf.org/html/rfc7517">
///   JWK RFC Document
/// </seealso>
unit JOSE.Core.JWK;

interface

uses
  System.SysUtils,
  JOSE.Types.Bytes,
  JOSE.Core.Base;

type
  TJWK = class(TJOSEBase)
  private
    FKey: TSuperBytes;
  public
    constructor Create(AKey: TSuperBytes);
    property Key: TSuperBytes read FKey write FKey;
  end;

implementation

{ TJWK }

constructor TJWK.Create(AKey: TSuperBytes);
begin
  inherited Create;
  FKey := AKey;
end;

end.
