.class public Lcom/nineoldandroids/animation/AnimatorInflater;
.super Ljava/lang/Object;
.source "AnimatorInflater.java"


# static fields
.field private static final Animator:[I

.field private static final AnimatorSet:[I

.field private static final AnimatorSet_ordering:I = 0x0

.field private static final Animator_duration:I = 0x0

.field private static final Animator_interpolator:I = 0x7

.field private static final Animator_repeatCount:I = 0x5

.field private static final Animator_repeatMode:I = 0x6

.field private static final Animator_startOffset:I = 0x1

.field private static final Animator_valueFrom:I = 0x3

.field private static final Animator_valueTo:I = 0x4

.field private static final Animator_valueType:I = 0x2

.field private static final PropertyAnimator:[I

.field private static final PropertyAnimator_propertyName:I

.field private static final TOGETHER:I

.field private static final VALUE_TYPE_FLOAT:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 43
    new-array v0, v3, [I

    const v1, 0x10102e2

    aput v1, v0, v2

    sput-object v0, Lcom/nineoldandroids/animation/AnimatorInflater;->AnimatorSet:[I

    .line 48
    new-array v0, v3, [I

    const v1, 0x10102e1

    aput v1, v0, v2

    sput-object v0, Lcom/nineoldandroids/animation/AnimatorInflater;->PropertyAnimator:[I

    .line 53
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/nineoldandroids/animation/AnimatorInflater;->Animator:[I

    return-void

    :array_0
    .array-data 4
        0x1010198
        0x10101be
        0x10102e0
        0x10102de
        0x10102df
        0x10101bf
        0x10101c0
        0x1010141
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createAnimatorFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)Lcom/nineoldandroids/animation/Animator;
    .locals 3
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 121
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lcom/nineoldandroids/animation/AnimatorInflater;->createAnimatorFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Lcom/nineoldandroids/animation/AnimatorSet;I)Lcom/nineoldandroids/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method private static createAnimatorFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Lcom/nineoldandroids/animation/AnimatorSet;I)Lcom/nineoldandroids/animation/Animator;
    .locals 17
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "parent"    # Lcom/nineoldandroids/animation/AnimatorSet;
    .param p4, "sequenceOrdering"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 128
    const/4 v4, 0x0

    .line 129
    .local v4, "anim":Lcom/nineoldandroids/animation/Animator;
    const/4 v6, 0x0

    .line 133
    .local v6, "childAnims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nineoldandroids/animation/Animator;>;"
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    .line 136
    .local v7, "depth":I
    :cond_0
    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v13

    .local v13, "type":I
    const/4 v14, 0x3

    if-ne v13, v14, :cond_1

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v14

    if-le v14, v7, :cond_6

    :cond_1
    const/4 v14, 0x1

    if-eq v13, v14, :cond_6

    .line 138
    const/4 v14, 0x2

    if-ne v13, v14, :cond_0

    .line 142
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    .line 144
    .local v11, "name":Ljava/lang/String;
    const-string v14, "objectAnimator"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 145
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/nineoldandroids/animation/AnimatorInflater;->loadObjectAnimator(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v4

    .line 160
    :goto_1
    if-eqz p3, :cond_0

    .line 161
    if-nez v6, :cond_2

    .line 162
    new-instance v6, Ljava/util/ArrayList;

    .end local v6    # "childAnims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nineoldandroids/animation/Animator;>;"
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 164
    .restart local v6    # "childAnims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nineoldandroids/animation/Animator;>;"
    :cond_2
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 146
    :cond_3
    const-string v14, "animator"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 147
    const/4 v14, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v1, v14}, Lcom/nineoldandroids/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/nineoldandroids/animation/ValueAnimator;)Lcom/nineoldandroids/animation/ValueAnimator;

    move-result-object v4

    goto :goto_1

    .line 148
    :cond_4
    const-string v14, "set"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 149
    new-instance v4, Lcom/nineoldandroids/animation/AnimatorSet;

    .end local v4    # "anim":Lcom/nineoldandroids/animation/Animator;
    invoke-direct {v4}, Lcom/nineoldandroids/animation/AnimatorSet;-><init>()V

    .line 150
    .restart local v4    # "anim":Lcom/nineoldandroids/animation/Animator;
    sget-object v14, Lcom/nineoldandroids/animation/AnimatorInflater;->AnimatorSet:[I

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v14}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 152
    .local v3, "a":Landroid/content/res/TypedArray;
    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v3, v14, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v12

    .local v12, "ordering":I
    move-object v14, v4

    .line 154
    check-cast v14, Lcom/nineoldandroids/animation/AnimatorSet;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2, v14, v12}, Lcom/nineoldandroids/animation/AnimatorInflater;->createAnimatorFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Lcom/nineoldandroids/animation/AnimatorSet;I)Lcom/nineoldandroids/animation/Animator;

    .line 155
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_1

    .line 157
    .end local v3    # "a":Landroid/content/res/TypedArray;
    .end local v12    # "ordering":I
    :cond_5
    new-instance v14, Ljava/lang/RuntimeException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Unknown animator name: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 167
    .end local v11    # "name":Ljava/lang/String;
    :cond_6
    if-eqz p3, :cond_8

    if-eqz v6, :cond_8

    .line 168
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v14

    new-array v5, v14, [Lcom/nineoldandroids/animation/Animator;

    .line 169
    .local v5, "animsArray":[Lcom/nineoldandroids/animation/Animator;
    const/4 v9, 0x0

    .line 170
    .local v9, "index":I
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nineoldandroids/animation/Animator;

    .line 171
    .local v3, "a":Lcom/nineoldandroids/animation/Animator;
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "index":I
    .local v10, "index":I
    aput-object v3, v5, v9

    move v9, v10

    .end local v10    # "index":I
    .restart local v9    # "index":I
    goto :goto_2

    .line 173
    .end local v3    # "a":Lcom/nineoldandroids/animation/Animator;
    :cond_7
    if-nez p4, :cond_9

    .line 174
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Lcom/nineoldandroids/animation/AnimatorSet;->playTogether([Lcom/nineoldandroids/animation/Animator;)V

    .line 180
    .end local v5    # "animsArray":[Lcom/nineoldandroids/animation/Animator;
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "index":I
    :cond_8
    :goto_3
    return-object v4

    .line 176
    .restart local v5    # "animsArray":[Lcom/nineoldandroids/animation/Animator;
    .restart local v8    # "i$":Ljava/util/Iterator;
    .restart local v9    # "index":I
    :cond_9
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Lcom/nineoldandroids/animation/AnimatorSet;->playSequentially([Lcom/nineoldandroids/animation/Animator;)V

    goto :goto_3
.end method

.method public static loadAnimator(Landroid/content/Context;I)Lcom/nineoldandroids/animation/Animator;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 97
    const/4 v1, 0x0

    .line 99
    .local v1, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getAnimation(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 100
    invoke-static {p0, v1}, Lcom/nineoldandroids/animation/AnimatorInflater;->createAnimatorFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)Lcom/nineoldandroids/animation/Animator;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 114
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_0
    return-object v3

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "ex":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t load animation resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 105
    .local v2, "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v2, v0}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 106
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 114
    .end local v0    # "ex":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v2    # "rnf":Landroid/content/res/Resources$NotFoundException;
    :catchall_0
    move-exception v3

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_1
    throw v3

    .line 107
    :catch_1
    move-exception v0

    .line 108
    .local v0, "ex":Ljava/io/IOException;
    :try_start_2
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t load animation resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 111
    .restart local v2    # "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v2, v0}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 112
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method private static loadAnimator(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/nineoldandroids/animation/ValueAnimator;)Lcom/nineoldandroids/animation/ValueAnimator;
    .locals 23
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "anim"    # Lcom/nineoldandroids/animation/ValueAnimator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 213
    sget-object v21, Lcom/nineoldandroids/animation/AnimatorInflater;->Animator:[I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 216
    .local v3, "a":Landroid/content/res/TypedArray;
    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v21

    move/from16 v0, v21

    int-to-long v4, v0

    .line 218
    .local v4, "duration":J
    const/16 v21, 0x1

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v21

    move/from16 v0, v21

    int-to-long v11, v0

    .line 220
    .local v11, "startDelay":J
    const/16 v21, 0x2

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v20

    .line 223
    .local v20, "valueType":I
    if-nez p2, :cond_0

    .line 224
    new-instance p2, Lcom/nineoldandroids/animation/ValueAnimator;

    .end local p2    # "anim":Lcom/nineoldandroids/animation/ValueAnimator;
    invoke-direct/range {p2 .. p2}, Lcom/nineoldandroids/animation/ValueAnimator;-><init>()V

    .line 228
    .restart local p2    # "anim":Lcom/nineoldandroids/animation/ValueAnimator;
    :cond_0
    const/16 v17, 0x3

    .line 229
    .local v17, "valueFromIndex":I
    const/16 v19, 0x4

    .line 231
    .local v19, "valueToIndex":I
    if-nez v20, :cond_8

    const/4 v7, 0x1

    .line 233
    .local v7, "getFloats":Z
    :goto_0
    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v14

    .line 234
    .local v14, "tvFrom":Landroid/util/TypedValue;
    if-eqz v14, :cond_9

    const/4 v8, 0x1

    .line 235
    .local v8, "hasFrom":Z
    :goto_1
    if-eqz v8, :cond_a

    iget v6, v14, Landroid/util/TypedValue;->type:I

    .line 236
    .local v6, "fromType":I
    :goto_2
    move/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v15

    .line 237
    .local v15, "tvTo":Landroid/util/TypedValue;
    if-eqz v15, :cond_b

    const/4 v9, 0x1

    .line 238
    .local v9, "hasTo":Z
    :goto_3
    if-eqz v9, :cond_c

    iget v13, v15, Landroid/util/TypedValue;->type:I

    .line 240
    .local v13, "toType":I
    :goto_4
    if-eqz v8, :cond_1

    const/16 v21, 0x1c

    move/from16 v0, v21

    if-lt v6, v0, :cond_1

    const/16 v21, 0x1f

    move/from16 v0, v21

    if-le v6, v0, :cond_2

    :cond_1
    if-eqz v9, :cond_3

    const/16 v21, 0x1c

    move/from16 v0, v21

    if-lt v13, v0, :cond_3

    const/16 v21, 0x1f

    move/from16 v0, v21

    if-gt v13, v0, :cond_3

    .line 245
    :cond_2
    const/4 v7, 0x0

    .line 246
    new-instance v21, Lcom/nineoldandroids/animation/ArgbEvaluator;

    invoke-direct/range {v21 .. v21}, Lcom/nineoldandroids/animation/ArgbEvaluator;-><init>()V

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/ValueAnimator;->setEvaluator(Lcom/nineoldandroids/animation/TypeEvaluator;)V

    .line 249
    :cond_3
    if-eqz v7, :cond_12

    .line 252
    if-eqz v8, :cond_10

    .line 253
    const/16 v21, 0x5

    move/from16 v0, v21

    if-ne v6, v0, :cond_d

    .line 254
    const/16 v21, 0x0

    move/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v16

    .line 258
    .local v16, "valueFrom":F
    :goto_5
    if-eqz v9, :cond_f

    .line 259
    const/16 v21, 0x5

    move/from16 v0, v21

    if-ne v13, v0, :cond_e

    .line 260
    const/16 v21, 0x0

    move/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v18

    .line 264
    .local v18, "valueTo":F
    :goto_6
    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [F

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput v16, v21, v22

    const/16 v22, 0x1

    aput v18, v21, v22

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/ValueAnimator;->setFloatValues([F)V

    .line 316
    .end local v16    # "valueFrom":F
    .end local v18    # "valueTo":F
    :cond_4
    :goto_7
    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Lcom/nineoldandroids/animation/ValueAnimator;->setDuration(J)Lcom/nineoldandroids/animation/ValueAnimator;

    .line 317
    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Lcom/nineoldandroids/animation/ValueAnimator;->setStartDelay(J)V

    .line 319
    const/16 v21, 0x5

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v21

    if-eqz v21, :cond_5

    .line 320
    const/16 v21, 0x5

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v21

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/ValueAnimator;->setRepeatCount(I)V

    .line 323
    :cond_5
    const/16 v21, 0x6

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v21

    if-eqz v21, :cond_6

    .line 324
    const/16 v21, 0x6

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v21

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/ValueAnimator;->setRepeatMode(I)V

    .line 332
    :cond_6
    const/16 v21, 0x7

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    .line 334
    .local v10, "resID":I
    if-lez v10, :cond_7

    .line 335
    move-object/from16 v0, p0

    invoke-static {v0, v10}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v21

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/ValueAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 337
    :cond_7
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 339
    return-object p2

    .line 231
    .end local v6    # "fromType":I
    .end local v7    # "getFloats":Z
    .end local v8    # "hasFrom":Z
    .end local v9    # "hasTo":Z
    .end local v10    # "resID":I
    .end local v13    # "toType":I
    .end local v14    # "tvFrom":Landroid/util/TypedValue;
    .end local v15    # "tvTo":Landroid/util/TypedValue;
    :cond_8
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 234
    .restart local v7    # "getFloats":Z
    .restart local v14    # "tvFrom":Landroid/util/TypedValue;
    :cond_9
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 235
    .restart local v8    # "hasFrom":Z
    :cond_a
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 237
    .restart local v6    # "fromType":I
    .restart local v15    # "tvTo":Landroid/util/TypedValue;
    :cond_b
    const/4 v9, 0x0

    goto/16 :goto_3

    .line 238
    .restart local v9    # "hasTo":Z
    :cond_c
    const/4 v13, 0x0

    goto/16 :goto_4

    .line 256
    .restart local v13    # "toType":I
    :cond_d
    const/16 v21, 0x0

    move/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v16

    .restart local v16    # "valueFrom":F
    goto/16 :goto_5

    .line 262
    :cond_e
    const/16 v21, 0x0

    move/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v18

    .restart local v18    # "valueTo":F
    goto/16 :goto_6

    .line 266
    .end local v18    # "valueTo":F
    :cond_f
    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [F

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput v16, v21, v22

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/ValueAnimator;->setFloatValues([F)V

    goto/16 :goto_7

    .line 269
    .end local v16    # "valueFrom":F
    :cond_10
    const/16 v21, 0x5

    move/from16 v0, v21

    if-ne v13, v0, :cond_11

    .line 270
    const/16 v21, 0x0

    move/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v18

    .line 274
    .restart local v18    # "valueTo":F
    :goto_8
    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [F

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput v18, v21, v22

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/ValueAnimator;->setFloatValues([F)V

    goto/16 :goto_7

    .line 272
    .end local v18    # "valueTo":F
    :cond_11
    const/16 v21, 0x0

    move/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v18

    .restart local v18    # "valueTo":F
    goto :goto_8

    .line 279
    .end local v18    # "valueTo":F
    :cond_12
    if-eqz v8, :cond_18

    .line 280
    const/16 v21, 0x5

    move/from16 v0, v21

    if-ne v6, v0, :cond_13

    .line 281
    const/16 v21, 0x0

    move/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v21

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v16, v0

    .line 288
    .local v16, "valueFrom":I
    :goto_9
    if-eqz v9, :cond_17

    .line 289
    const/16 v21, 0x5

    move/from16 v0, v21

    if-ne v13, v0, :cond_15

    .line 290
    const/16 v21, 0x0

    move/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v21

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v18, v0

    .line 297
    .local v18, "valueTo":I
    :goto_a
    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput v16, v21, v22

    const/16 v22, 0x1

    aput v18, v21, v22

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/ValueAnimator;->setIntValues([I)V

    goto/16 :goto_7

    .line 282
    .end local v16    # "valueFrom":I
    .end local v18    # "valueTo":I
    :cond_13
    const/16 v21, 0x1c

    move/from16 v0, v21

    if-lt v6, v0, :cond_14

    const/16 v21, 0x1f

    move/from16 v0, v21

    if-gt v6, v0, :cond_14

    .line 284
    const/16 v21, 0x0

    move/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v16

    .restart local v16    # "valueFrom":I
    goto :goto_9

    .line 286
    .end local v16    # "valueFrom":I
    :cond_14
    const/16 v21, 0x0

    move/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v16

    .restart local v16    # "valueFrom":I
    goto :goto_9

    .line 291
    :cond_15
    const/16 v21, 0x1c

    move/from16 v0, v21

    if-lt v13, v0, :cond_16

    const/16 v21, 0x1f

    move/from16 v0, v21

    if-gt v13, v0, :cond_16

    .line 293
    const/16 v21, 0x0

    move/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v18

    .restart local v18    # "valueTo":I
    goto :goto_a

    .line 295
    .end local v18    # "valueTo":I
    :cond_16
    const/16 v21, 0x0

    move/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v18

    .restart local v18    # "valueTo":I
    goto :goto_a

    .line 299
    .end local v18    # "valueTo":I
    :cond_17
    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput v16, v21, v22

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/ValueAnimator;->setIntValues([I)V

    goto/16 :goto_7

    .line 302
    .end local v16    # "valueFrom":I
    :cond_18
    if-eqz v9, :cond_4

    .line 303
    const/16 v21, 0x5

    move/from16 v0, v21

    if-ne v13, v0, :cond_19

    .line 304
    const/16 v21, 0x0

    move/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v21

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v18, v0

    .line 311
    .restart local v18    # "valueTo":I
    :goto_b
    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput v18, v21, v22

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/ValueAnimator;->setIntValues([I)V

    goto/16 :goto_7

    .line 305
    .end local v18    # "valueTo":I
    :cond_19
    const/16 v21, 0x1c

    move/from16 v0, v21

    if-lt v13, v0, :cond_1a

    const/16 v21, 0x1f

    move/from16 v0, v21

    if-gt v13, v0, :cond_1a

    .line 307
    const/16 v21, 0x0

    move/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v18

    .restart local v18    # "valueTo":I
    goto :goto_b

    .line 309
    .end local v18    # "valueTo":I
    :cond_1a
    const/16 v21, 0x0

    move/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v18

    .restart local v18    # "valueTo":I
    goto :goto_b
.end method

.method private static loadObjectAnimator(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/nineoldandroids/animation/ObjectAnimator;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 187
    new-instance v1, Lcom/nineoldandroids/animation/ObjectAnimator;

    invoke-direct {v1}, Lcom/nineoldandroids/animation/ObjectAnimator;-><init>()V

    .line 189
    .local v1, "anim":Lcom/nineoldandroids/animation/ObjectAnimator;
    invoke-static {p0, p1, v1}, Lcom/nineoldandroids/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/nineoldandroids/animation/ValueAnimator;)Lcom/nineoldandroids/animation/ValueAnimator;

    .line 191
    sget-object v3, Lcom/nineoldandroids/animation/AnimatorInflater;->PropertyAnimator:[I

    invoke-virtual {p0, p1, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 194
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 196
    .local v2, "propertyName":Ljava/lang/String;
    invoke-virtual {v1, v2}, Lcom/nineoldandroids/animation/ObjectAnimator;->setPropertyName(Ljava/lang/String;)V

    .line 198
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 200
    return-object v1
.end method
