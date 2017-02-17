.class public Lnet/veritran/utils/VTFontHelper;
.super Ljava/lang/Object;
.source "VTFontHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/veritran/utils/VTFontHelper$CustomTypefaceSpan;
    }
.end annotation


# static fields
.field public static final FONTSIZE_LARGE_CODE:Ljava/lang/String; = "large"

.field public static final FONTSIZE_LARGE_SIZE:F = 24.0f

.field public static final FONTSIZE_MEDIUM_CODE:Ljava/lang/String; = "medium"

.field public static final FONTSIZE_MEDIUM_SIZE:F = 16.0f

.field public static final FONTSIZE_REL_LARGE_CODE:Ljava/lang/String; = "rellarge"

.field public static final FONTSIZE_REL_LARGE_MULTIPLIER:F = 0.06666667f

.field public static FONTSIZE_REL_LARGE_SIZE:F = 0.0f

.field public static final FONTSIZE_REL_MEDIUM_CODE:Ljava/lang/String; = "relmedium"

.field public static final FONTSIZE_REL_MEDIUM_MULTIPLIER:F = 0.045454547f

.field public static FONTSIZE_REL_MEDIUM_SIZE:F = 0.0f

.field public static final FONTSIZE_REL_SMALL_CODE:Ljava/lang/String; = "relsmall"

.field public static final FONTSIZE_REL_SMALL_MULTIPLIER:F = 0.033333335f

.field public static FONTSIZE_REL_SMALL_SIZE:F = 0.0f

.field public static final FONTSIZE_REL_XLARGE_CODE:Ljava/lang/String; = "relxlarge"

.field public static final FONTSIZE_REL_XLARGE_MULTIPLIER:F = 0.1f

.field public static FONTSIZE_REL_XLARGE_SIZE:F = 0.0f

.field public static final FONTSIZE_REL_XSMALL_CODE:Ljava/lang/String; = "relxsmall"

.field public static final FONTSIZE_REL_XSMALL_MULTIPLIER:F = 0.025f

.field public static FONTSIZE_REL_XSMALL_SIZE:F = 0.0f

.field public static final FONTSIZE_REL_XXLARGE_CODE:Ljava/lang/String; = "relxxlarge"

.field public static final FONTSIZE_REL_XXLARGE_MULTIPLIER:F = 0.2f

.field public static FONTSIZE_REL_XXLARGE_SIZE:F = 0.0f

.field public static final FONTSIZE_REL_XXSMALL_CODE:Ljava/lang/String; = "relxxsmall"

.field public static final FONTSIZE_REL_XXSMALL_MULTIPLIER:F = 0.018518519f

.field public static FONTSIZE_REL_XXSMALL_SIZE:F = 0.0f

.field public static final FONTSIZE_SMALL_CODE:Ljava/lang/String; = "small"

.field public static final FONTSIZE_SMALL_SIZE:F = 10.0f

.field public static final FONTSIZE_XLARGE_CODE:Ljava/lang/String; = "xlarge"

.field public static final FONTSIZE_XLARGE_SIZE:F = 36.0f

.field public static final FONTSIZE_XSMALL_CODE:Ljava/lang/String; = "xsmall"

.field public static final FONTSIZE_XSMALL_SIZE:F = 8.0f

.field public static final FONTSIZE_XXLARGE_CODE:Ljava/lang/String; = "xxlarge"

.field public static final FONTSIZE_XXLARGE_SIZE:F = 48.0f

.field public static final FONTSIZE_XXSMALL_CODE:Ljava/lang/String; = "xxsmall"

.field public static final FONTSIZE_XXSMALL_SIZE:F = 6.0f

.field private static final TEXT_FAMILY_CUSTOM:I = 0x2

.field private static final TEXT_FAMILY_DEFAULT:I = 0x0

.field private static final TEXT_FAMILY_INTERNAL:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 102
    const/high16 v0, 0x40c00000    # 6.0f

    sput v0, Lnet/veritran/utils/VTFontHelper;->FONTSIZE_REL_XXSMALL_SIZE:F

    .line 103
    const/high16 v0, 0x41000000    # 8.0f

    sput v0, Lnet/veritran/utils/VTFontHelper;->FONTSIZE_REL_XSMALL_SIZE:F

    .line 104
    const/high16 v0, 0x41200000    # 10.0f

    sput v0, Lnet/veritran/utils/VTFontHelper;->FONTSIZE_REL_SMALL_SIZE:F

    .line 105
    const/high16 v0, 0x41800000    # 16.0f

    sput v0, Lnet/veritran/utils/VTFontHelper;->FONTSIZE_REL_MEDIUM_SIZE:F

    .line 106
    const/high16 v0, 0x41c00000    # 24.0f

    sput v0, Lnet/veritran/utils/VTFontHelper;->FONTSIZE_REL_LARGE_SIZE:F

    .line 107
    const/high16 v0, 0x42100000    # 36.0f

    sput v0, Lnet/veritran/utils/VTFontHelper;->FONTSIZE_REL_XLARGE_SIZE:F

    .line 108
    const/high16 v0, 0x42400000    # 48.0f

    sput v0, Lnet/veritran/utils/VTFontHelper;->FONTSIZE_REL_XXLARGE_SIZE:F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSpannableString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;
    .locals 32
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "defaultFontFamily"    # Ljava/lang/String;
    .param p2, "defaultfontStyle"    # Ljava/lang/String;
    .param p3, "defaultFontWeigth"    # Ljava/lang/String;

    .prologue
    .line 280
    const-string v27, "#N\\{\\}"

    const-string v28, "\n"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 282
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "#O{"

    invoke-static/range {v28 .. v28}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "([^"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "}"

    invoke-static/range {v28 .. v28}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "]*)"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "}"

    invoke-static/range {v28 .. v28}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 284
    .local v17, "maskFont":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v18

    .line 285
    .local v18, "pattern":Ljava/util/regex/Pattern;
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v16

    .line 288
    .local v16, "m":Ljava/util/regex/Matcher;
    invoke-virtual/range {v16 .. v16}, Ljava/util/regex/Matcher;->find()Z

    move-result v27

    if-eqz v27, :cond_a

    .line 290
    new-instance v20, Ljava/util/Vector;

    invoke-direct/range {v20 .. v20}, Ljava/util/Vector;-><init>()V

    .line 291
    .local v20, "res":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    new-instance v21, Ljava/util/Vector;

    invoke-direct/range {v21 .. v21}, Ljava/util/Vector;-><init>()V

    .line 295
    .local v21, "resStyles":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    const/16 v19, -0x1

    .line 297
    .local v19, "prevGroupEnd":I
    invoke-virtual/range {v16 .. v16}, Ljava/util/regex/Matcher;->start()I

    move-result v13

    .line 298
    .local v13, "groupStart":I
    invoke-virtual/range {v16 .. v16}, Ljava/util/regex/Matcher;->end()I

    move-result v12

    .line 300
    .local v12, "groupEnd":I
    if-eqz v13, :cond_0

    .line 303
    const-string v27, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 304
    const/16 v27, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 310
    :cond_0
    const/16 v27, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 312
    move/from16 v19, v12

    .line 315
    :goto_0
    invoke-virtual/range {v16 .. v16}, Ljava/util/regex/Matcher;->find()Z

    move-result v27

    if-eqz v27, :cond_1

    .line 317
    invoke-virtual/range {v16 .. v16}, Ljava/util/regex/Matcher;->start()I

    move-result v13

    .line 318
    invoke-virtual/range {v16 .. v16}, Ljava/util/regex/Matcher;->end()I

    move-result v12

    .line 320
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 324
    const/16 v27, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 327
    move/from16 v19, v12

    goto :goto_0

    .line 330
    :cond_1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v27

    add-int/lit8 v27, v27, -0x1

    move/from16 v0, v19

    move/from16 v1, v27

    if-ge v0, v1, :cond_2

    .line 333
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 337
    :cond_2
    const-string v22, ""

    .line 338
    .local v22, "s":Ljava/lang/String;
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_1
    invoke-virtual/range {v21 .. v21}, Ljava/util/Vector;->size()I

    move-result v27

    move/from16 v0, v27

    if-ge v14, v0, :cond_3

    .line 340
    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/String;

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 338
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 343
    :cond_3
    new-instance v23, Landroid/text/SpannableString;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 345
    .local v23, "spannablecontent":Landroid/text/SpannableString;
    const/4 v6, 0x0

    .line 347
    .local v6, "currentPosition":I
    const/4 v14, 0x0

    :goto_2
    invoke-virtual/range {v21 .. v21}, Ljava/util/Vector;->size()I

    move-result v27

    move/from16 v0, v27

    if-ge v14, v0, :cond_b

    .line 349
    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 350
    .local v5, "cssStyle":Ljava/lang/String;
    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    .line 351
    .local v25, "textToApplycssStyle":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v27

    if-nez v27, :cond_9

    .line 353
    move/from16 v24, v6

    .line 354
    .local v24, "start":I
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v27

    add-int v7, v6, v27

    .line 357
    .local v7, "end":I
    invoke-static {v5}, Lnet/veritran/ThemeManager;->attributesInCssClass(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v4

    .line 360
    .local v4, "attributesToApply":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v27, "color"

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_4

    .line 362
    const-string v27, "color"

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/String;

    invoke-static/range {v27 .. v27}, Lnet/veritran/VTAbstractActivity;->resolveColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v15

    .line 364
    .local v15, "iColor":Ljava/lang/Integer;
    if-eqz v15, :cond_4

    .line 366
    new-instance v27, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v28

    invoke-direct/range {v27 .. v28}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v28, 0x12

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move/from16 v2, v24

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v7, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 370
    .end local v15    # "iColor":Ljava/lang/Integer;
    :cond_4
    const-string v27, "fontsize"

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_5

    .line 372
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lnet/veritran/VTUserApplicationSmart;->getCurrentActivity()Lnet/veritran/VTAbstractActivity;

    move-result-object v28

    const-string v27, "fontsize"

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/String;

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lnet/veritran/VTAbstractActivity;->resolveSizeInPixels(Ljava/lang/String;Z)F

    move-result v9

    .line 374
    .local v9, "fontSizePixels":F
    const/16 v27, 0x0

    cmpl-float v27, v9, v27

    if-lez v27, :cond_5

    .line 376
    new-instance v27, Landroid/text/style/AbsoluteSizeSpan;

    float-to-double v0, v9

    move-wide/from16 v28, v0

    const-wide/high16 v30, 0x3fe0000000000000L    # 0.5

    add-double v28, v28, v30

    move-wide/from16 v0, v28

    double-to-int v0, v0

    move/from16 v28, v0

    invoke-direct/range {v27 .. v28}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    const/16 v28, 0x12

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move/from16 v2, v24

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v7, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 380
    .end local v9    # "fontSizePixels":F
    :cond_5
    move-object/from16 v8, p1

    .line 381
    .local v8, "fontFamily":Ljava/lang/String;
    move-object/from16 v10, p2

    .line 382
    .local v10, "fontStyle":Ljava/lang/String;
    move-object/from16 v11, p3

    .line 384
    .local v11, "fontWeight":Ljava/lang/String;
    const-string v27, "fontfamily"

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_6

    .line 386
    const-string v27, "fontfamily"

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "fontFamily":Ljava/lang/String;
    check-cast v8, Ljava/lang/String;

    .line 389
    .restart local v8    # "fontFamily":Ljava/lang/String;
    :cond_6
    const-string v27, "fontstyle"

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_7

    .line 391
    const-string v27, "fontstyle"

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "fontStyle":Ljava/lang/String;
    check-cast v10, Ljava/lang/String;

    .line 394
    .restart local v10    # "fontStyle":Ljava/lang/String;
    :cond_7
    const-string v27, "fontweight"

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_8

    .line 396
    const-string v27, "fontweight"

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "fontWeight":Ljava/lang/String;
    check-cast v11, Ljava/lang/String;

    .line 399
    .restart local v11    # "fontWeight":Ljava/lang/String;
    :cond_8
    invoke-static {v8, v10, v11}, Lnet/veritran/utils/VTFontHelper;->resolveTextFamily(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v26

    .line 401
    .local v26, "typeface":Landroid/graphics/Typeface;
    new-instance v27, Landroid/text/style/StyleSpan;

    const/16 v28, 0x0

    invoke-direct/range {v27 .. v28}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/16 v28, 0x12

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move/from16 v2, v24

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v7, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 402
    new-instance v27, Lnet/veritran/utils/VTFontHelper$CustomTypefaceSpan;

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lnet/veritran/utils/VTFontHelper$CustomTypefaceSpan;-><init>(Landroid/graphics/Typeface;)V

    const/16 v28, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move/from16 v2, v24

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v7, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 406
    .end local v4    # "attributesToApply":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7    # "end":I
    .end local v8    # "fontFamily":Ljava/lang/String;
    .end local v10    # "fontStyle":Ljava/lang/String;
    .end local v11    # "fontWeight":Ljava/lang/String;
    .end local v24    # "start":I
    .end local v26    # "typeface":Landroid/graphics/Typeface;
    :cond_9
    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/String;

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v27

    add-int v6, v6, v27

    .line 347
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_2

    .line 413
    .end local v5    # "cssStyle":Ljava/lang/String;
    .end local v6    # "currentPosition":I
    .end local v12    # "groupEnd":I
    .end local v13    # "groupStart":I
    .end local v14    # "i":I
    .end local v19    # "prevGroupEnd":I
    .end local v20    # "res":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    .end local v21    # "resStyles":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    .end local v22    # "s":Ljava/lang/String;
    .end local v23    # "spannablecontent":Landroid/text/SpannableString;
    .end local v25    # "textToApplycssStyle":Ljava/lang/String;
    :cond_a
    new-instance v23, Landroid/text/SpannableString;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    :cond_b
    return-object v23
.end method

.method public static resolveTextBold(Ljava/lang/String;)Z
    .locals 1
    .param p0, "weight"    # Ljava/lang/String;

    .prologue
    .line 232
    if-eqz p0, :cond_0

    .line 233
    const-string v0, "bold"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    const/4 v0, 0x1

    .line 236
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static resolveTextCustom(Ljava/lang/String;)Z
    .locals 2
    .param p0, "family"    # Ljava/lang/String;

    .prologue
    .line 207
    invoke-static {p0}, Lnet/veritran/utils/VTFontHelper;->resolveTextFamilyType(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 208
    const/4 v0, 0x1

    .line 210
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static resolveTextFamily(Ljava/lang/String;I)Landroid/graphics/Typeface;
    .locals 4
    .param p0, "family"    # Ljava/lang/String;
    .param p1, "iStyle"    # I

    .prologue
    .line 191
    invoke-static {p0}, Lnet/veritran/utils/VTFontHelper;->resolveTextFamilyType(Ljava/lang/String;)I

    move-result v1

    .line 192
    .local v1, "textFamilyType":I
    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    .line 193
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v3

    invoke-virtual {v3, p0}, Lnet/veritran/VTUserApplicationSmart;->getConfigurationFontFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 194
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    .line 195
    .local v2, "tf":Landroid/graphics/Typeface;
    invoke-static {v2, p1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v2

    .line 202
    .end local v0    # "file":Ljava/io/File;
    :goto_0
    return-object v2

    .line 196
    .end local v2    # "tf":Landroid/graphics/Typeface;
    :cond_0
    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 197
    invoke-static {p0, p1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    .restart local v2    # "tf":Landroid/graphics/Typeface;
    goto :goto_0

    .line 199
    .end local v2    # "tf":Landroid/graphics/Typeface;
    :cond_1
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-static {v3, p1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v2

    .restart local v2    # "tf":Landroid/graphics/Typeface;
    goto :goto_0
.end method

.method public static resolveTextFamily(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 4
    .param p0, "family"    # Ljava/lang/String;
    .param p1, "style"    # Ljava/lang/String;
    .param p2, "weight"    # Ljava/lang/String;

    .prologue
    .line 215
    const-string v1, "TEXTFAMILY"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Family:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";style:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";weight:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    const/4 v0, 0x0

    .line 217
    .local v0, "iStyle":I
    const-string v1, "TEXTFAMILY"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "style:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    invoke-static {p1}, Lnet/veritran/utils/VTFontHelper;->resolveTextItalic(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 219
    or-int/lit8 v0, v0, 0x2

    .line 220
    const-string v1, "TEXTFAMILY"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "italic style:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    :cond_0
    invoke-static {p2}, Lnet/veritran/utils/VTFontHelper;->resolveTextBold(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 223
    or-int/lit8 v0, v0, 0x1

    .line 224
    const-string v1, "TEXTFAMILY"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bold:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    :cond_1
    invoke-static {p0, v0}, Lnet/veritran/utils/VTFontHelper;->resolveTextFamily(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    return-object v1
.end method

.method private static resolveTextFamilyType(Ljava/lang/String;)I
    .locals 2
    .param p0, "family"    # Ljava/lang/String;

    .prologue
    .line 176
    if-eqz p0, :cond_1

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 177
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v1

    invoke-virtual {v1, p0}, Lnet/veritran/VTUserApplicationSmart;->getConfigurationFontFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 178
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 179
    const/4 v1, 0x2

    .line 184
    .end local v0    # "file":Ljava/io/File;
    :goto_0
    return v1

    .line 181
    .restart local v0    # "file":Ljava/io/File;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 184
    .end local v0    # "file":Ljava/io/File;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static resolveTextItalic(Ljava/lang/String;)Z
    .locals 1
    .param p0, "style"    # Ljava/lang/String;

    .prologue
    .line 241
    if-eqz p0, :cond_0

    .line 242
    const-string v0, "italic"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    const/4 v0, 0x1

    .line 245
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static resolveTextSize(Ljava/lang/String;)Ljava/lang/Float;
    .locals 4
    .param p0, "size"    # Ljava/lang/String;

    .prologue
    .line 120
    const-string v2, "-"

    const-string v3, ""

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 121
    .local v1, "nsize":Ljava/lang/String;
    const-string v2, "xxsmall"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 122
    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 164
    :goto_0
    return-object v2

    .line 123
    :cond_0
    const-string v2, "xsmall"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 124
    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    goto :goto_0

    .line 125
    :cond_1
    const-string v2, "small"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 126
    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    goto :goto_0

    .line 127
    :cond_2
    const-string v2, "medium"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 128
    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    goto :goto_0

    .line 129
    :cond_3
    const-string v2, "large"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 130
    const/high16 v2, 0x41c00000    # 24.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    goto :goto_0

    .line 131
    :cond_4
    const-string v2, "xlarge"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 132
    const/high16 v2, 0x42100000    # 36.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    goto :goto_0

    .line 133
    :cond_5
    const-string v2, "xxlarge"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 134
    const/high16 v2, 0x42400000    # 48.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    goto :goto_0

    .line 135
    :cond_6
    const-string v2, "relxxsmall"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 136
    sget v2, Lnet/veritran/utils/VTFontHelper;->FONTSIZE_REL_XXSMALL_SIZE:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    goto :goto_0

    .line 137
    :cond_7
    const-string v2, "relxsmall"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 138
    sget v2, Lnet/veritran/utils/VTFontHelper;->FONTSIZE_REL_XSMALL_SIZE:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    goto :goto_0

    .line 139
    :cond_8
    const-string v2, "relsmall"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 140
    sget v2, Lnet/veritran/utils/VTFontHelper;->FONTSIZE_REL_SMALL_SIZE:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    goto/16 :goto_0

    .line 141
    :cond_9
    const-string v2, "relmedium"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 142
    sget v2, Lnet/veritran/utils/VTFontHelper;->FONTSIZE_REL_MEDIUM_SIZE:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    goto/16 :goto_0

    .line 143
    :cond_a
    const-string v2, "rellarge"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 144
    sget v2, Lnet/veritran/utils/VTFontHelper;->FONTSIZE_REL_LARGE_SIZE:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    goto/16 :goto_0

    .line 145
    :cond_b
    const-string v2, "relxlarge"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 146
    sget v2, Lnet/veritran/utils/VTFontHelper;->FONTSIZE_REL_XLARGE_SIZE:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    goto/16 :goto_0

    .line 147
    :cond_c
    const-string v2, "relxxlarge"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 148
    sget v2, Lnet/veritran/utils/VTFontHelper;->FONTSIZE_REL_XXLARGE_SIZE:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    goto/16 :goto_0

    .line 158
    :cond_d
    invoke-static {v1}, Lorg/jnumbers/NumberUtils;->parseFloat(Ljava/lang/CharSequence;)F

    move-result v0

    .line 160
    .local v0, "fsize":F
    const/4 v2, 0x1

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_e

    .line 161
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    goto/16 :goto_0

    .line 164
    :cond_e
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method public static setTextColor(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 2
    .param p0, "v"    # Landroid/widget/TextView;
    .param p1, "sColor"    # Ljava/lang/String;

    .prologue
    .line 112
    invoke-static {p1}, Lnet/veritran/VTAbstractActivity;->resolveColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 113
    .local v0, "color":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 116
    :cond_0
    return-void
.end method

.method public static setTextFamily(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "v"    # Landroid/widget/TextView;
    .param p1, "family"    # Ljava/lang/String;
    .param p2, "style"    # Ljava/lang/String;
    .param p3, "weight"    # Ljava/lang/String;

    .prologue
    .line 250
    const/4 v2, 0x0

    invoke-static {p1, v2}, Lnet/veritran/utils/VTFontHelper;->resolveTextFamily(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    .line 252
    .local v1, "tf":Landroid/graphics/Typeface;
    const/4 v0, 0x0

    .line 253
    .local v0, "iStyle":I
    if-eqz p2, :cond_0

    .line 254
    const-string v2, "italic"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 255
    or-int/lit8 v0, v0, 0x2

    .line 257
    :cond_0
    if-eqz p3, :cond_1

    .line 258
    const-string v2, "bold"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 259
    or-int/lit8 v0, v0, 0x1

    .line 264
    :cond_1
    invoke-virtual {p0, v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 265
    return-void
.end method

.method public static updateFontRelativeSizes(I)V
    .locals 2
    .param p0, "screenHeight"    # I

    .prologue
    .line 269
    int-to-float v0, p0

    const v1, 0x3c97b426

    mul-float/2addr v0, v1

    sput v0, Lnet/veritran/utils/VTFontHelper;->FONTSIZE_REL_XXSMALL_SIZE:F

    .line 270
    int-to-float v0, p0

    const v1, 0x3ccccccd    # 0.025f

    mul-float/2addr v0, v1

    sput v0, Lnet/veritran/utils/VTFontHelper;->FONTSIZE_REL_XSMALL_SIZE:F

    .line 271
    int-to-float v0, p0

    const v1, 0x3d088889

    mul-float/2addr v0, v1

    sput v0, Lnet/veritran/utils/VTFontHelper;->FONTSIZE_REL_SMALL_SIZE:F

    .line 272
    int-to-float v0, p0

    const v1, 0x3d3a2e8c

    mul-float/2addr v0, v1

    sput v0, Lnet/veritran/utils/VTFontHelper;->FONTSIZE_REL_MEDIUM_SIZE:F

    .line 273
    int-to-float v0, p0

    const v1, 0x3d888889

    mul-float/2addr v0, v1

    sput v0, Lnet/veritran/utils/VTFontHelper;->FONTSIZE_REL_LARGE_SIZE:F

    .line 274
    int-to-float v0, p0

    const v1, 0x3dcccccd    # 0.1f

    mul-float/2addr v0, v1

    sput v0, Lnet/veritran/utils/VTFontHelper;->FONTSIZE_REL_XLARGE_SIZE:F

    .line 275
    int-to-float v0, p0

    const v1, 0x3e4ccccd    # 0.2f

    mul-float/2addr v0, v1

    sput v0, Lnet/veritran/utils/VTFontHelper;->FONTSIZE_REL_XXLARGE_SIZE:F

    .line 276
    return-void
.end method
