(*
 * Hedgewars, a free turn based strategy game
 * Copyright (c) 2004-2015 Andrey Korotaev <unC0Rr@gmail.com>
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; version 2 of the License
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
 *)

unit uSinTable;

interface

const SinTable: array[0..1024] of QWord = (
     $00000000,
     $006487EB,
     $00C90FC6,
     $012D9782,
     $01921F10,
     $01F6A660,
     $025B2D62,
     $02BFB407,
     $03243A40,
     $0388BFFC,
     $03ED452D,
     $0451C9C3,
     $04B64DAF,
     $051AD0E0,
     $057F5348,
     $05E3D4D7,
     $0648557E,
     $06ACD52C,
     $071153D3,
     $0775D163,
     $07DA4DCC,
     $083EC900,
     $08A342EE,
     $0907BB86,
     $096C32BB,
     $09D0A87B,
     $0A351CB8,
     $0A998F62,
     $0AFE0069,
     $0B626FBF,
     $0BC6DD53,
     $0C2B4916,
     $0C8FB2F9,
     $0CF41AEB,
     $0D5880DF,
     $0DBCE4C3,
     $0E214689,
     $0E85A622,
     $0EEA037D,
     $0F4E5E8B,
     $0FB2B73D,
     $10170D83,
     $107B614E,
     $10DFB28F,
     $11440135,
     $11A84D31,
     $120C9675,
     $1270DCF0,
     $12D52093,
     $1339614E,
     $139D9F13,
     $1401D9D1,
     $14661179,
     $14CA45FC,
     $152E774A,
     $1592A554,
     $15F6D00B,
     $165AF75E,
     $16BF1B3E,
     $17233B9D,
     $1787586A,
     $17EB7197,
     $184F8713,
     $18B398CF,
     $1917A6BC,
     $197BB0CB,
     $19DFB6EB,
     $1A43B90E,
     $1AA7B724,
     $1B0BB11E,
     $1B6FA6EC,
     $1BD3987F,
     $1C3785C8,
     $1C9B6EB6,
     $1CFF533B,
     $1D633348,
     $1DC70ECC,
     $1E2AE5B8,
     $1E8EB7FE,
     $1EF2858D,
     $1F564E57,
     $1FBA124B,
     $201DD15B,
     $20818B77,
     $20E5408F,
     $2148F095,
     $21AC9B79,
     $2210412C,
     $2273E19E,
     $22D77CBF,
     $233B1281,
     $239EA2D5,
     $24022DAA,
     $2465B2F1,
     $24C9329C,
     $252CAC9A,
     $259020DD,
     $25F38F55,
     $2656F7F3,
     $26BA5AA7,
     $271DB762,
     $27810E14,
     $27E45EB0,
     $2847A924,
     $28AAED62,
     $290E2B5B,
     $297162FF,
     $29D4943F,
     $2A37BF0B,
     $2A9AE355,
     $2AFE010D,
     $2B611823,
     $2BC42889,
     $2C27322F,
     $2C8A3506,
     $2CED30FF,
     $2D50260A,
     $2DB31418,
     $2E15FB1A,
     $2E78DB01,
     $2EDBB3BD,
     $2F3E853F,
     $2FA14F78,
     $30041258,
     $3066CDD1,
     $30C981D3,
     $312C2E50,
     $318ED336,
     $31F17079,
     $32540608,
     $32B693D3,
     $331919CD,
     $337B97E6,
     $33DE0E0E,
     $34407C36,
     $34A2E250,
     $3505404B,
     $3567961A,
     $35C9E3AC,
     $362C28F3,
     $368E65DE,
     $36F09A61,
     $3752C66A,
     $37B4E9EB,
     $381704D5,
     $38791719,
     $38DB20A7,
     $393D2170,
     $399F1966,
     $3A010879,
     $3A62EE9A,
     $3AC4CBBA,
     $3B269FCB,
     $3B886ABB,
     $3BEA2C7E,
     $3C4BE503,
     $3CAD943C,
     $3D0F3A1A,
     $3D70D68C,
     $3DD26986,
     $3E33F2F6,
     $3E9572CF,
     $3EF6E901,
     $3F58557E,
     $3FB9B836,
     $401B111A,
     $407C601B,
     $40DDA52A,
     $413EE039,
     $41A01138,
     $42013818,
     $426254CA,
     $42C3673F,
     $43246F69,
     $43856D38,
     $43E6609E,
     $4447498B,
     $44A827F0,
     $4508FBBF,
     $4569C4E9,
     $45CA835E,
     $462B3710,
     $468BDFF0,
     $46EC7DEE,
     $474D10FD,
     $47AD990D,
     $480E160F,
     $486E87F5,
     $48CEEEAF,
     $492F4A2F,
     $498F9A65,
     $49EFDF44,
     $4A5018BB,
     $4AB046BD,
     $4B10693A,
     $4B708024,
     $4BD08B6C,
     $4C308B02,
     $4C907ED9,
     $4CF066E1,
     $4D50430C,
     $4DB0134A,
     $4E0FD78D,
     $4E6F8FC7,
     $4ECF3BE8,
     $4F2EDBE2,
     $4F8E6FA6,
     $4FEDF725,
     $504D7250,
     $50ACE11A,
     $510C4372,
     $516B994B,
     $51CAE295,
     $522A1F43,
     $52894F44,
     $52E8728C,
     $5347890A,
     $53A692B0,
     $54058F70,
     $54647F3B,
     $54C36203,
     $552237B8,
     $5581004C,
     $55DFBBB0,
     $563E69D7,
     $569D0AB0,
     $56FB9E2E,
     $575A2443,
     $57B89CDE,
     $581707F3,
     $58756572,
     $58D3B54D,
     $5931F775,
     $59902BDC,
     $59EE5273,
     $5A4C6B2B,
     $5AAA75F7,
     $5B0872C8,
     $5B66618E,
     $5BC4423C,
     $5C2214C4,
     $5C7FD916,
     $5CDD8F25,
     $5D3B36E1,
     $5D98D03D,
     $5DF65B29,
     $5E53D798,
     $5EB1457C,
     $5F0EA4C4,
     $5F6BF565,
     $5FC9374E,
     $60266A71,
     $60838EC1,
     $60E0A42F,
     $613DAAAC,
     $619AA22A,
     $61F78A9B,
     $625463F0,
     $62B12E1B,
     $630DE90E,
     $636A94BB,
     $63C73113,
     $6423BE08,
     $64803B8B,
     $64DCA98F,
     $65390805,
     $659556DF,
     $65F1960E,
     $664DC585,
     $66A9E535,
     $6705F510,
     $6761F508,
     $67BDE50F,
     $6819C516,
     $6875950F,
     $68D154EC,
     $692D049F,
     $6988A41B,
     $69E4334F,
     $6A3FB230,
     $6A9B20AE,
     $6AF67EBB,
     $6B51CC49,
     $6BAD094B,
     $6C0835B2,
     $6C635170,
     $6CBE5C77,
     $6D1956B9,
     $6D744028,
     $6DCF18B5,
     $6E29E054,
     $6E8496F6,
     $6EDF3C8C,
     $6F39D10A,
     $6F945460,
     $6FEEC681,
     $70492760,
     $70A376EE,
     $70FDB51D,
     $7157E1DF,
     $71B1FD26,
     $720C06E5,
     $7265FF0E,
     $72BFE593,
     $7319BA65,
     $73737D77,
     $73CD2EBC,
     $7426CE24,
     $74805BA4,
     $74D9D72C,
     $753340AF,
     $758C981F,
     $75E5DD6E,
     $763F108F,
     $76983174,
     $76F1400F,
     $774A3C52,
     $77A32630,
     $77FBFD9B,
     $7854C285,
     $78AD74E0,
     $7906149F,
     $795EA1B5,
     $79B71C13,
     $7A0F83AC,
     $7A67D872,
     $7AC01A58,
     $7B184950,
     $7B70654C,
     $7BC86E3F,
     $7C20641B,
     $7C7846D3,
     $7CD01659,
     $7D27D2A0,
     $7D7F7B99,
     $7DD71139,
     $7E2E9370,
     $7E860232,
     $7EDD5D71,
     $7F34A51F,
     $7F8BD930,
     $7FE2F995,
     $803A0641,
     $8090FF28,
     $80E7E43A,
     $813EB56C,
     $819572AF,
     $81EC1BF7,
     $8242B135,
     $8299325D,
     $82EF9F62,
     $8345F835,
     $839C3CC9,
     $83F26D12,
     $84488902,
     $849E908B,
     $84F483A1,
     $854A6236,
     $85A02C3C,
     $85F5E1A8,
     $864B826B,
     $86A10E78,
     $86F685C2,
     $874BE83C,
     $87A135D9,
     $87F66E8C,
     $884B9247,
     $88A0A0FD,
     $88F59AA1,
     $894A7F26,
     $899F4E7F,
     $89F408A0,
     $8A48AD7A,
     $8A9D3D00,
     $8AF1B727,
     $8B461BE0,
     $8B9A6B1F,
     $8BEEA4D7,
     $8C42C8FA,
     $8C96D77C,
     $8CEAD050,
     $8D3EB368,
     $8D9280B9,
     $8DE63834,
     $8E39D9CD,
     $8E8D6578,
     $8EE0DB27,
     $8F343ACD,
     $8F87845E,
     $8FDAB7CC,
     $902DD50C,
     $9080DC0F,
     $90D3CCCA,
     $9126A72F,
     $91796B31,
     $91CC18C5,
     $921EAFDD,
     $9271306C,
     $92C39A66,
     $9315EDBE,
     $93682A67,
     $93BA5055,
     $940C5F7A,
     $945E57CB,
     $94B0393B,
     $950203BD,
     $9553B744,
     $95A553C4,
     $95F6D930,
     $9648477C,
     $96999E9A,
     $96EADE80,
     $973C071F,
     $978D186C,
     $97DE125A,
     $982EF4DD,
     $987FBFE7,
     $98D0736D,
     $99210F62,
     $997193BA,
     $99C20068,
     $9A125560,
     $9A629296,
     $9AB2B7FD,
     $9B02C588,
     $9B52BB2C,
     $9BA298DC,
     $9BF25E8C,
     $9C420C2F,
     $9C91A1B9,
     $9CE11F1F,
     $9D308453,
     $9D7FD149,
     $9DCF05F6,
     $9E1E224C,
     $9E6D2640,
     $9EBC11C6,
     $9F0AE4D1,
     $9F599F56,
     $9FA84148,
     $9FF6CA9A,
     $A0453B42,
     $A0939332,
     $A0E1D25F,
     $A12FF8BC,
     $A17E063F,
     $A1CBFAD9,
     $A219D681,
     $A2679928,
     $A2B542C5,
     $A302D349,
     $A3504AAB,
     $A39DA8DD,
     $A3EAEDD3,
     $A4381983,
     $A4852BDF,
     $A4D224DD,
     $A51F046F,
     $A56BCA8B,
     $A5B87724,
     $A6050A2F,
     $A65183A0,
     $A69DE36B,
     $A6EA2984,
     $A73655DF,
     $A7826871,
     $A7CE612E,
     $A81A400B,
     $A86604FB,
     $A8B1AFF3,
     $A8FD40E7,
     $A948B7CB,
     $A9941495,
     $A9DF5738,
     $AA2A7FA9,
     $AA758DDB,
     $AAC081C5,
     $AB0B5B59,
     $AB561A8D,
     $ABA0BF54,
     $ABEB49A4,
     $AC35B971,
     $AC800EB0,
     $ACCA4954,
     $AD146953,
     $AD5E6EA1,
     $ADA85932,
     $ADF228FC,
     $AE3BDDF3,
     $AE85780B,
     $AECEF73A,
     $AF185B73,
     $AF61A4AC,
     $AFAAD2D9,
     $AFF3E5EF,
     $B03CDDE3,
     $B085BAA9,
     $B0CE7C36,
     $B117227F,
     $B15FAD79,
     $B1A81D19,
     $B1F07153,
     $B238AA1C,
     $B280C769,
     $B2C8C930,
     $B310AF64,
     $B35879FB,
     $B3A028E9,
     $B3E7BC25,
     $B42F33A1,
     $B4768F55,
     $B4BDCF34,
     $B504F334,
     $B54BFB49,
     $B592E769,
     $B5D9B789,
     $B6206B9E,
     $B667039D,
     $B6AD7F7A,
     $B6F3DF2C,
     $B73A22A7,
     $B78049E1,
     $B7C654CE,
     $B80C4364,
     $B8521599,
     $B897CB60,
     $B8DD64B0,
     $B922E17E,
     $B96841BF,
     $B9AD8569,
     $B9F2AC70,
     $BA37B6CB,
     $BA7CA46D,
     $BAC1754E,
     $BB062962,
     $BB4AC09E,
     $BB8F3AF8,
     $BBD39866,
     $BC17D8DD,
     $BC5BFC52,
     $BCA002BA,
     $BCE3EC0D,
     $BD27B83E,
     $BD6B6744,
     $BDAEF913,
     $BDF26DA3,
     $BE35C4E7,
     $BE78FED6,
     $BEBC1B66,
     $BEFF1A8C,
     $BF41FC3E,
     $BF84C071,
     $BFC7671B,
     $C009F032,
     $C04C5BAB,
     $C08EA97D,
     $C0D0D99E,
     $C112EC02,
     $C154E0A0,
     $C196B76D,
     $C1D87060,
     $C21A0B6E,
     $C25B888D,
     $C29CE7B4,
     $C2DE28D7,
     $C31F4BEE,
     $C36050ED,
     $C3A137CB,
     $C3E2007E,
     $C422AAFC,
     $C463373A,
     $C4A3A530,
     $C4E3F4D2,
     $C5242618,
     $C56438F7,
     $C5A42D65,
     $C5E40359,
     $C623BAC8,
     $C66353A9,
     $C6A2CDF2,
     $C6E22999,
     $C7216694,
     $C76084DA,
     $C79F8461,
     $C7DE651F,
     $C81D270B,
     $C85BCA1B,
     $C89A4E44,
     $C8D8B37F,
     $C916F9C0,
     $C95520FE,
     $C9932930,
     $C9D1124D,
     $CA0EDC49,
     $CA4C871D,
     $CA8A12BF,
     $CAC77F24,
     $CB04CC45,
     $CB41FA16,
     $CB7F088F,
     $CBBBF7A6,
     $CBF8C752,
     $CC35778A,
     $CC720844,
     $CCAE7977,
     $CCEACB19,
     $CD26FD21,
     $CD630F87,
     $CD9F0240,
     $CDDAD543,
     $CE168888,
     $CE521C04,
     $CE8D8FAF,
     $CEC8E380,
     $CF04176E,
     $CF3F2B6E,
     $CF7A1F79,
     $CFB4F385,
     $CFEFA78A,
     $D02A3B7D,
     $D064AF56,
     $D09F030C,
     $D0D93696,
     $D11349EB,
     $D14D3D02,
     $D1870FD2,
     $D1C0C253,
     $D1FA547A,
     $D233C641,
     $D26D179C,
     $D2A64885,
     $D2DF58F1,
     $D31848D8,
     $D3511832,
     $D389C6F5,
     $D3C25519,
     $D3FAC295,
     $D4330F60,
     $D46B3B73,
     $D4A346C3,
     $D4DB3148,
     $D512FAFB,
     $D54AA3D1,
     $D5822BC4,
     $D5B992C9,
     $D5F0D8D8,
     $D627FDEA,
     $D65F01F5,
     $D695E4F1,
     $D6CCA6D6,
     $D703479A,
     $D739C736,
     $D77025A2,
     $D7A662D4,
     $D7DC7EC5,
     $D812796C,
     $D84852C1,
     $D87E0ABB,
     $D8B3A152,
     $D8E9167F,
     $D91E6A38,
     $D9539C76,
     $D988AD30,
     $D9BD9C5E,
     $D9F269F8,
     $DA2715F5,
     $DA5BA04F,
     $DA9008FC,
     $DAC44FF5,
     $DAF87531,
     $DB2C78A8,
     $DB605A53,
     $DB941A29,
     $DBC7B822,
     $DBFB3437,
     $DC2E8E60,
     $DC61C694,
     $DC94DCCB,
     $DCC7D0FF,
     $DCFAA326,
     $DD2D533A,
     $DD5FE131,
     $DD924D06,
     $DDC496AF,
     $DDF6BE25,
     $DE28C360,
     $DE5AA658,
     $DE8C6707,
     $DEBE0563,
     $DEEF8167,
     $DF20DB09,
     $DF521242,
     $DF83270B,
     $DFB4195C,
     $DFE4E92D,
     $E0159678,
     $E0462134,
     $E076895A,
     $E0A6CEE2,
     $E0D6F1C6,
     $E106F1FD,
     $E136CF81,
     $E1668A4A,
     $E1962250,
     $E1C5978C,
     $E1F4E9F7,
     $E224198A,
     $E253263D,
     $E2821009,
     $E2B0D6E7,
     $E2DF7AD0,
     $E30DFBBC,
     $E33C59A4,
     $E36A9482,
     $E398AC4D,
     $E3C6A0FF,
     $E3F47291,
     $E42220FC,
     $E44FAC38,
     $E47D143F,
     $E4AA590A,
     $E4D77A91,
     $E50478CE,
     $E53153B9,
     $E55E0B4D,
     $E58A9F81,
     $E5B71050,
     $E5E35DB2,
     $E60F87A0,
     $E63B8E14,
     $E6677106,
     $E6933071,
     $E6BECC4C,
     $E6EA4493,
     $E715993D,
     $E740CA44,
     $E76BD7A2,
     $E796C150,
     $E7C18746,
     $E7EC2980,
     $E816A7F6,
     $E84102A1,
     $E86B397B,
     $E8954C7D,
     $E8BF3BA2,
     $E8E906E2,
     $E912AE37,
     $E93C319B,
     $E9659107,
     $E98ECC75,
     $E9B7E3DE,
     $E9E0D73D,
     $EA09A68A,
     $EA3251C0,
     $EA5AD8D9,
     $EA833BCD,
     $EAAB7A97,
     $EAD39531,
     $EAFB8B94,
     $EB235DBB,
     $EB4B0B9E,
     $EB729539,
     $EB99FA84,
     $EBC13B7B,
     $EBE85816,
     $EC0F5050,
     $EC362422,
     $EC5CD387,
     $EC835E7A,
     $ECA9C4F3,
     $ECD006EC,
     $ECF62461,
     $ED1C1D4B,
     $ED41F1A4,
     $ED67A167,
     $ED8D2C8E,
     $EDB29312,
     $EDD7D4EE,
     $EDFCF21D,
     $EE21EA98,
     $EE46BE5A,
     $EE6B6D5D,
     $EE8FF79C,
     $EEB45D11,
     $EED89DB6,
     $EEFCB986,
     $EF20B07B,
     $EF448290,
     $EF682FBF,
     $EF8BB802,
     $EFAF1B55,
     $EFD259B1,
     $EFF57311,
     $F0186771,
     $F03B36C9,
     $F05DE116,
     $F0806651,
     $F0A2C676,
     $F0C5017F,
     $F0E71767,
     $F1090828,
     $F12AD3BD,
     $F14C7A22,
     $F16DFB50,
     $F18F5744,
     $F1B08DF6,
     $F1D19F64,
     $F1F28B86,
     $F2135259,
     $F233F3D8,
     $F2546FFC,
     $F274C6C2,
     $F294F824,
     $F2B5041D,
     $F2D4EAA8,
     $F2F4ABC1,
     $F3144762,
     $F333BD87,
     $F3530E2B,
     $F3723949,
     $F3913EDB,
     $F3B01EDE,
     $F3CED94D,
     $F3ED6E23,
     $F40BDD5A,
     $F42A26F0,
     $F4484ADD,
     $F466491F,
     $F48421B1,
     $F4A1D48D,
     $F4BF61B0,
     $F4DCC915,
     $F4FA0AB6,
     $F5172691,
     $F5341C9F,
     $F550ECDE,
     $F56D9747,
     $F58A1BD8,
     $F5A67A8B,
     $F5C2B35C,
     $F5DEC647,
     $F5FAB347,
     $F6167A59,
     $F6321B77,
     $F64D969E,
     $F668EBC9,
     $F6841AF5,
     $F69F241C,
     $F6BA073B,
     $F6D4C44E,
     $F6EF5B50,
     $F709CC3E,
     $F7241713,
     $F73E3BCB,
     $F7583A63,
     $F77212D5,
     $F78BC51F,
     $F7A5513C,
     $F7BEB729,
     $F7D7F6E1,
     $F7F11060,
     $F80A03A4,
     $F822D0A6,
     $F83B7765,
     $F853F7DD,
     $F86C5208,
     $F88485E4,
     $F89C936D,
     $F8B47AA0,
     $F8CC3B78,
     $F8E3D5F1,
     $F8FB4A09,
     $F91297BC,
     $F929BF05,
     $F940BFE2,
     $F9579A4F,
     $F96E4E48,
     $F984DBCA,
     $F99B42D2,
     $F9B1835B,
     $F9C79D63,
     $F9DD90E6,
     $F9F35DE1,
     $FA090450,
     $FA1E8430,
     $FA33DD7E,
     $FA491036,
     $FA5E1C55,
     $FA7301D8,
     $FA87C0BC,
     $FA9C58FD,
     $FAB0CA99,
     $FAC5158C,
     $FAD939D2,
     $FAED376A,
     $FB010E50,
     $FB14BE80,
     $FB2847F8,
     $FB3BAAB4,
     $FB4EE6B3,
     $FB61FBF0,
     $FB74EA69,
     $FB87B21A,
     $FB9A5302,
     $FBACCD1D,
     $FBBF2068,
     $FBD14CE1,
     $FBE35284,
     $FBF5314F,
     $FC06E93F,
     $FC187A52,
     $FC29E484,
     $FC3B27D4,
     $FC4C443D,
     $FC5D39BE,
     $FC6E0855,
     $FC7EAFFD,
     $FC8F30B6,
     $FC9F8A7C,
     $FCAFBD4D,
     $FCBFC926,
     $FCCFAE05,
     $FCDF6BE8,
     $FCEF02CB,
     $FCFE72AD,
     $FD0DBB8C,
     $FD1CDD64,
     $FD2BD833,
     $FD3AABF8,
     $FD4958B0,
     $FD57DE58,
     $FD663CEF,
     $FD747472,
     $FD8284DF,
     $FD906E34,
     $FD9E306F,
     $FDABCB8D,
     $FDB93F8C,
     $FDC68C6B,
     $FDD3B228,
     $FDE0B0BF,
     $FDED8830,
     $FDFA3878,
     $FE06C196,
     $FE132387,
     $FE1F5E4A,
     $FE2B71DC,
     $FE375E3C,
     $FE432368,
     $FE4EC15E,
     $FE5A381D,
     $FE6587A2,
     $FE70AFEB,
     $FE7BB0F8,
     $FE868AC7,
     $FE913D55,
     $FE9BC8A1,
     $FEA62CAA,
     $FEB0696D,
     $FEBA7EEA,
     $FEC46D1F,
     $FECE3409,
     $FED7D3A9,
     $FEE14BFB,
     $FEEA9D00,
     $FEF3C6B4,
     $FEFCC918,
     $FF05A429,
     $FF0E57E6,
     $FF16E44E,
     $FF1F495F,
     $FF278719,
     $FF2F9D79,
     $FF378C80,
     $FF3F542A,
     $FF46F478,
     $FF4E6D68,
     $FF55BEF9,
     $FF5CE92A,
     $FF63EBF9,
     $FF6AC766,
     $FF717B6F,
     $FF780814,
     $FF7E6D54,
     $FF84AB2C,
     $FF8AC19E,
     $FF90B0A7,
     $FF967847,
     $FF9C187C,
     $FFA19147,
     $FFA6E2A6,
     $FFAC0C97,
     $FFB10F1C,
     $FFB5EA32,
     $FFBA9DD9,
     $FFBF2A10,
     $FFC38ED7,
     $FFC7CC2C,
     $FFCBE210,
     $FFCFD082,
     $FFD39780,
     $FFD7370B,
     $FFDAAF21,
     $FFDDFFC3,
     $FFE128F0,
     $FFE42AA6,
     $FFE704E7,
     $FFE9B7B1,
     $FFEC4304,
     $FFEEA6E0,
     $FFF0E344,
     $FFF2F82F,
     $FFF4E5A2,
     $FFF6AB9D,
     $FFF84A1E,
     $FFF9C126,
     $FFFB10B5,
     $FFFC38CA,
     $FFFD3965,
     $FFFE1286,
     $FFFEC42C,
     $FFFF4E59,
     $FFFFB10B,
     $FFFFEC43,
     $100000000
     );

implementation

end.
