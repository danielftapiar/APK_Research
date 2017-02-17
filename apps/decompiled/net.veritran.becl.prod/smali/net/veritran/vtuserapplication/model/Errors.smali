.class public abstract Lnet/veritran/vtuserapplication/model/Errors;
.super Ljava/lang/Object;


# static fields
.field public static final ERROR_LEVEL_SHOW_ERROR_CHECK_CONFIG:I = 0x3

.field public static final ERROR_LEVEL_SHOW_ERROR_CLOSE_APPLICATION:I = 0x9

.field public static final ERROR_LEVEL_SHOW_ERROR_DELETE_CONFIG:I = 0x5

.field public static final ERROR_LEVEL_SHOW_ERROR_DELETE_CONFIG_1:I = 0x7

.field public static final ERROR_LEVEL_SHOW_ERROR_START_STATE:I = 0x0

.field public static final ERROR_LEVEL_SHOW_ERROR_START_STATE_1:I = 0x1

.field public static final ERR_211:I = 0xd3

.field public static final ERR_223:I = 0xdf

.field public static final ERR_227:I = 0xe3

.field public static final ERR_229:I = 0xe5

.field public static final ERR_233:I = 0xe9

.field public static final ERR_239:I = 0xef

.field public static final ERR_241:I = 0xf1

.field public static final ERR_251:I = 0xfb

.field public static final ERR_257:I = 0x101

.field public static final ERR_263:I = 0x107

.field public static final ERR_269:I = 0x10d

.field public static final ERR_271:I = 0x10f

.field public static final ERR_277:I = 0x115

.field public static final ERR_281:I = 0x119

.field public static final ERR_283:I = 0x11b

.field public static final ERR_293:I = 0x125

.field public static final ERR_307:I = 0x133

.field public static final ERR_311:I = 0x137

.field public static final ERR_313:I = 0x139

.field public static final ERR_317:I = 0x13d

.field public static final ERR_331:I = 0x14b

.field public static final ERR_337:I = 0x151

.field public static final ERR_347:I = 0x15b

.field public static final ERR_349:I = 0x15d

.field public static final ERR_353:I = 0x161

.field public static final ERR_359:I = 0x167

.field public static final ERR_367:I = 0x16f

.field public static final ERR_373:I = 0x175

.field public static final ERR_379:I = 0x17b

.field public static final ERR_381:I = 0x17d

.field public static final ERR_383:I = 0x17f

.field public static final ERR_389:I = 0x185

.field public static final ERR_397:I = 0x18d

.field public static final ERR_401:I = 0x191

.field public static final ERR_409:I = 0x199

.field public static final ERR_419:I = 0x1a3

.field public static final ERR_421:I = 0x1a5

.field public static final ERR_431:I = 0x1af

.field public static final ERR_433:I = 0x1b1

.field public static final ERR_439:I = 0x1b7

.field public static final ERR_443:I = 0x1bb

.field public static final ERR_449:I = 0x1c1

.field public static final ERR_457:I = 0x1c9

.field public static final ERR_461:I = 0x1cd

.field public static final ERR_463:I = 0x1cf

.field public static final ERR_467:I = 0x1d3

.field public static final ERR_479:I = 0x1df

.field public static final ERR_487:I = 0x1e7

.field public static final ERR_491:I = 0x1eb

.field public static final ERR_503:I = 0x1f7

.field public static final ERR_509:I = 0x1fd

.field public static final ERR_521:I = 0x209

.field public static final ERR_523:I = 0x20b

.field public static final ERR_541:I = 0x21d

.field public static final ERR_547:I = 0x223

.field public static final ERR_557:I = 0x22d

.field public static final ERR_563:I = 0x233

.field public static final ERR_GENERAL:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getErrorDescription(I)Ljava/lang/String;
    .locals 1

    sparse-switch p0, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :sswitch_0
    const-string v0, "err0001"

    invoke-static {v0}, Lnet/veritran/vtuserapplication/model/LanguageResourceManager;->getResource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_1
    const-string v0, "err0002"

    invoke-static {v0}, Lnet/veritran/vtuserapplication/model/LanguageResourceManager;->getResource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_2
    const-string v0, "err0003"

    invoke-static {v0}, Lnet/veritran/vtuserapplication/model/LanguageResourceManager;->getResource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_3
    const-string v0, "err0004"

    invoke-static {v0}, Lnet/veritran/vtuserapplication/model/LanguageResourceManager;->getResource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_4
    const-string v0, "err0005"

    invoke-static {v0}, Lnet/veritran/vtuserapplication/model/LanguageResourceManager;->getResource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_5
    const-string v0, "err0006"

    invoke-static {v0}, Lnet/veritran/vtuserapplication/model/LanguageResourceManager;->getResource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_6
    const-string v0, "err0007"

    invoke-static {v0}, Lnet/veritran/vtuserapplication/model/LanguageResourceManager;->getResource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_7
    const-string v0, "err0008"

    invoke-static {v0}, Lnet/veritran/vtuserapplication/model/LanguageResourceManager;->getResource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_8
    const-string v0, "err0009"

    invoke-static {v0}, Lnet/veritran/vtuserapplication/model/LanguageResourceManager;->getResource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_9
    const-string v0, "err0010"

    invoke-static {v0}, Lnet/veritran/vtuserapplication/model/LanguageResourceManager;->getResource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_a
    const-string v0, "err0011"

    invoke-static {v0}, Lnet/veritran/vtuserapplication/model/LanguageResourceManager;->getResource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_b
    const-string v0, "err0014"

    invoke-static {v0}, Lnet/veritran/vtuserapplication/model/LanguageResourceManager;->getResource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_c
    const-string v0, "err0001"

    invoke-static {v0}, Lnet/veritran/vtuserapplication/model/LanguageResourceManager;->getResource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xd3 -> :sswitch_4
        0xdf -> :sswitch_4
        0xe3 -> :sswitch_4
        0xe5 -> :sswitch_4
        0xe9 -> :sswitch_4
        0xef -> :sswitch_4
        0xf1 -> :sswitch_4
        0xfb -> :sswitch_4
        0x101 -> :sswitch_2
        0x107 -> :sswitch_2
        0x10d -> :sswitch_4
        0x10f -> :sswitch_2
        0x115 -> :sswitch_3
        0x119 -> :sswitch_3
        0x11b -> :sswitch_3
        0x133 -> :sswitch_3
        0x137 -> :sswitch_3
        0x139 -> :sswitch_1
        0x13d -> :sswitch_5
        0x14b -> :sswitch_3
        0x151 -> :sswitch_3
        0x15b -> :sswitch_3
        0x15d -> :sswitch_2
        0x161 -> :sswitch_3
        0x167 -> :sswitch_5
        0x16f -> :sswitch_5
        0x175 -> :sswitch_5
        0x17b -> :sswitch_3
        0x17d -> :sswitch_4
        0x17f -> :sswitch_4
        0x185 -> :sswitch_4
        0x18d -> :sswitch_4
        0x191 -> :sswitch_6
        0x199 -> :sswitch_7
        0x1a3 -> :sswitch_2
        0x1a5 -> :sswitch_a
        0x1af -> :sswitch_a
        0x1b1 -> :sswitch_a
        0x1b7 -> :sswitch_a
        0x1bb -> :sswitch_a
        0x1c1 -> :sswitch_8
        0x1c9 -> :sswitch_9
        0x1cd -> :sswitch_2
        0x1cf -> :sswitch_3
        0x1d3 -> :sswitch_2
        0x1df -> :sswitch_2
        0x1e7 -> :sswitch_3
        0x1eb -> :sswitch_3
        0x20b -> :sswitch_c
        0x21d -> :sswitch_c
        0x223 -> :sswitch_4
        0x22d -> :sswitch_c
        0x233 -> :sswitch_b
    .end sparse-switch
.end method

.method public static getErrorLevel(I)I
    .locals 1

    const/4 v0, 0x0

    sparse-switch p0, :sswitch_data_0

    :goto_0
    :sswitch_0
    return v0

    :sswitch_1
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_3
    const/4 v0, 0x5

    goto :goto_0

    :sswitch_4
    const/4 v0, 0x7

    goto :goto_0

    :sswitch_5
    const/16 v0, 0x9

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xd3 -> :sswitch_0
        0xdf -> :sswitch_0
        0xe3 -> :sswitch_0
        0xe5 -> :sswitch_0
        0xe9 -> :sswitch_0
        0xef -> :sswitch_0
        0xf1 -> :sswitch_0
        0xfb -> :sswitch_0
        0x101 -> :sswitch_0
        0x107 -> :sswitch_0
        0x10d -> :sswitch_0
        0x10f -> :sswitch_0
        0x115 -> :sswitch_3
        0x119 -> :sswitch_3
        0x11b -> :sswitch_3
        0x133 -> :sswitch_3
        0x137 -> :sswitch_3
        0x139 -> :sswitch_0
        0x13d -> :sswitch_4
        0x14b -> :sswitch_3
        0x151 -> :sswitch_3
        0x15b -> :sswitch_3
        0x15d -> :sswitch_0
        0x161 -> :sswitch_3
        0x167 -> :sswitch_4
        0x16f -> :sswitch_4
        0x175 -> :sswitch_4
        0x17b -> :sswitch_2
        0x17d -> :sswitch_0
        0x17f -> :sswitch_0
        0x185 -> :sswitch_0
        0x18d -> :sswitch_0
        0x191 -> :sswitch_5
        0x199 -> :sswitch_1
        0x1a3 -> :sswitch_0
        0x1a5 -> :sswitch_0
        0x1af -> :sswitch_0
        0x1b1 -> :sswitch_0
        0x1b7 -> :sswitch_0
        0x1bb -> :sswitch_0
        0x1c1 -> :sswitch_0
        0x1c9 -> :sswitch_0
        0x1cd -> :sswitch_0
        0x1cf -> :sswitch_2
        0x1d3 -> :sswitch_0
        0x1df -> :sswitch_0
        0x1e7 -> :sswitch_3
        0x1eb -> :sswitch_3
        0x223 -> :sswitch_0
    .end sparse-switch
.end method
