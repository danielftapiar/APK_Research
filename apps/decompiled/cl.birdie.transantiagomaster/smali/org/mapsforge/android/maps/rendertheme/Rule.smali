.class abstract Lorg/mapsforge/android/maps/rendertheme/Rule;
.super Ljava/lang/Object;
.source "Rule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mapsforge/android/maps/rendertheme/Rule$1;
    }
.end annotation


# static fields
.field private static final MATCHERS_CACHE_KEY:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/mapsforge/android/maps/rendertheme/AttributeMatcher;",
            ">;"
        }
    .end annotation
.end field

.field private static final MATCHERS_CACHE_VALUE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/mapsforge/android/maps/rendertheme/AttributeMatcher;",
            ">;"
        }
    .end annotation
.end field

.field private static final SPLIT_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field final closedMatcher:Lorg/mapsforge/android/maps/rendertheme/ClosedMatcher;

.field final elementMatcher:Lorg/mapsforge/android/maps/rendertheme/ElementMatcher;

.field private final renderInstructions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/mapsforge/android/maps/rendertheme/renderinstruction/RenderInstruction;",
            ">;"
        }
    .end annotation
.end field

.field private final subRules:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/mapsforge/android/maps/rendertheme/Rule;",
            ">;"
        }
    .end annotation
.end field

.field final zoomMax:B

.field final zoomMin:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/mapsforge/android/maps/rendertheme/Rule;->MATCHERS_CACHE_KEY:Ljava/util/Map;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/mapsforge/android/maps/rendertheme/Rule;->MATCHERS_CACHE_VALUE:Ljava/util/Map;

    .line 33
    const-string v0, "\\|"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/mapsforge/android/maps/rendertheme/Rule;->SPLIT_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Lorg/mapsforge/android/maps/rendertheme/ElementMatcher;Lorg/mapsforge/android/maps/rendertheme/ClosedMatcher;BB)V
    .locals 2
    .param p1, "elementMatcher"    # Lorg/mapsforge/android/maps/rendertheme/ElementMatcher;
    .param p2, "closedMatcher"    # Lorg/mapsforge/android/maps/rendertheme/ClosedMatcher;
    .param p3, "zoomMin"    # B
    .param p4, "zoomMax"    # B

    .prologue
    const/4 v1, 0x4

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    iput-object p1, p0, Lorg/mapsforge/android/maps/rendertheme/Rule;->elementMatcher:Lorg/mapsforge/android/maps/rendertheme/ElementMatcher;

    .line 182
    iput-object p2, p0, Lorg/mapsforge/android/maps/rendertheme/Rule;->closedMatcher:Lorg/mapsforge/android/maps/rendertheme/ClosedMatcher;

    .line 183
    iput-byte p3, p0, Lorg/mapsforge/android/maps/rendertheme/Rule;->zoomMin:B

    .line 184
    iput-byte p4, p0, Lorg/mapsforge/android/maps/rendertheme/Rule;->zoomMax:B

    .line 186
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/mapsforge/android/maps/rendertheme/Rule;->renderInstructions:Ljava/util/ArrayList;

    .line 187
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/mapsforge/android/maps/rendertheme/Rule;->subRules:Ljava/util/ArrayList;

    .line 188
    return-void
.end method

.method static create(Ljava/lang/String;Lorg/xml/sax/Attributes;Ljava/util/Stack;)Lorg/mapsforge/android/maps/rendertheme/Rule;
    .locals 16
    .param p0, "elementName"    # Ljava/lang/String;
    .param p1, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/xml/sax/Attributes;",
            "Ljava/util/Stack",
            "<",
            "Lorg/mapsforge/android/maps/rendertheme/Rule;",
            ">;)",
            "Lorg/mapsforge/android/maps/rendertheme/Rule;"
        }
    .end annotation

    .prologue
    .line 140
    .local p2, "ruleStack":Ljava/util/Stack;, "Ljava/util/Stack<Lorg/mapsforge/android/maps/rendertheme/Rule;>;"
    const/4 v9, 0x0

    .line 141
    .local v9, "element":Lorg/mapsforge/android/maps/rendertheme/Element;
    const/4 v11, 0x0

    .line 142
    .local v11, "keys":Ljava/lang/String;
    const/4 v14, 0x0

    .line 143
    .local v14, "values":Ljava/lang/String;
    sget-object v8, Lorg/mapsforge/android/maps/rendertheme/Closed;->ANY:Lorg/mapsforge/android/maps/rendertheme/Closed;

    .line 144
    .local v8, "closed":Lorg/mapsforge/android/maps/rendertheme/Closed;
    const/4 v4, 0x0

    .line 145
    .local v4, "zoomMin":B
    const/16 v5, 0x7f

    .line 147
    .local v5, "zoomMax":B
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-ge v10, v1, :cond_6

    .line 148
    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v12

    .line 149
    .local v12, "name":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v13

    .line 151
    .local v13, "value":Ljava/lang/String;
    const-string v1, "e"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v13, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/mapsforge/android/maps/rendertheme/Element;->valueOf(Ljava/lang/String;)Lorg/mapsforge/android/maps/rendertheme/Element;

    move-result-object v9

    .line 147
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 153
    :cond_0
    const-string v1, "k"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 154
    move-object v11, v13

    goto :goto_1

    .line 155
    :cond_1
    const-string v1, "v"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 156
    move-object v14, v13

    goto :goto_1

    .line 157
    :cond_2
    const-string v1, "closed"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 158
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v13, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/mapsforge/android/maps/rendertheme/Closed;->valueOf(Ljava/lang/String;)Lorg/mapsforge/android/maps/rendertheme/Closed;

    move-result-object v8

    goto :goto_1

    .line 159
    :cond_3
    const-string v1, "zoom-min"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 160
    invoke-static {v13}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v4

    goto :goto_1

    .line 161
    :cond_4
    const-string v1, "zoom-max"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 162
    invoke-static {v13}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v5

    goto :goto_1

    .line 164
    :cond_5
    move-object/from16 v0, p0

    invoke-static {v0, v12, v13, v10}, Lorg/mapsforge/android/maps/rendertheme/RenderThemeHandler;->logUnknownAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    .line 168
    .end local v12    # "name":Ljava/lang/String;
    .end local v13    # "value":Ljava/lang/String;
    :cond_6
    if-nez v9, :cond_7

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "missing attribute e for element: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    if-nez v11, :cond_8

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "missing attribute k for element: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    if-nez v14, :cond_9

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "missing attribute v for element: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9
    if-gez v4, :cond_a

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "zoom-min must not be negative: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a
    if-gez v5, :cond_b

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "zoom-max must not be negative: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b
    if-le v4, v5, :cond_c

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "zoom-min must be less or equal zoom-max: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 169
    :cond_c
    sget-object v1, Lorg/mapsforge/android/maps/rendertheme/Rule$1;->$SwitchMap$org$mapsforge$android$maps$rendertheme$Element:[I

    invoke-virtual {v9}, Lorg/mapsforge/android/maps/rendertheme/Element;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unknown enum value: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    invoke-static {}, Lorg/mapsforge/android/maps/rendertheme/ElementNodeMatcher;->getInstance()Lorg/mapsforge/android/maps/rendertheme/ElementNodeMatcher;

    move-result-object v1

    :goto_2
    sget-object v2, Lorg/mapsforge/android/maps/rendertheme/Rule$1;->$SwitchMap$org$mapsforge$android$maps$rendertheme$Closed:[I

    invoke-virtual {v8}, Lorg/mapsforge/android/maps/rendertheme/Closed;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unknown enum value: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_1
    invoke-static {}, Lorg/mapsforge/android/maps/rendertheme/ElementWayMatcher;->getInstance()Lorg/mapsforge/android/maps/rendertheme/ElementWayMatcher;

    move-result-object v1

    goto :goto_2

    :pswitch_2
    invoke-static {}, Lorg/mapsforge/android/maps/rendertheme/AnyMatcher;->getInstance()Lorg/mapsforge/android/maps/rendertheme/AnyMatcher;

    move-result-object v1

    goto :goto_2

    :pswitch_3
    invoke-static {}, Lorg/mapsforge/android/maps/rendertheme/ClosedWayMatcher;->getInstance()Lorg/mapsforge/android/maps/rendertheme/ClosedWayMatcher;

    move-result-object v2

    move-object v3, v2

    :goto_3
    new-instance v7, Ljava/util/ArrayList;

    sget-object v2, Lorg/mapsforge/android/maps/rendertheme/Rule;->SPLIT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v11}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v7, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v15, Ljava/util/ArrayList;

    sget-object v2, Lorg/mapsforge/android/maps/rendertheme/Rule;->SPLIT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v14}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v15, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p2

    invoke-static {v1, v0}, Lorg/mapsforge/android/maps/rendertheme/RuleOptimizer;->optimize(Lorg/mapsforge/android/maps/rendertheme/ElementMatcher;Ljava/util/Stack;)Lorg/mapsforge/android/maps/rendertheme/ElementMatcher;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-static {v3, v0}, Lorg/mapsforge/android/maps/rendertheme/RuleOptimizer;->optimize(Lorg/mapsforge/android/maps/rendertheme/ClosedMatcher;Ljava/util/Stack;)Lorg/mapsforge/android/maps/rendertheme/ClosedMatcher;

    move-result-object v3

    const-string v1, "~"

    invoke-interface {v15, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    new-instance v6, Lorg/mapsforge/android/maps/rendertheme/NegativeMatcher;

    invoke-direct {v6, v7, v15}, Lorg/mapsforge/android/maps/rendertheme/NegativeMatcher;-><init>(Ljava/util/List;Ljava/util/List;)V

    new-instance v1, Lorg/mapsforge/android/maps/rendertheme/NegativeRule;

    invoke-direct/range {v1 .. v6}, Lorg/mapsforge/android/maps/rendertheme/NegativeRule;-><init>(Lorg/mapsforge/android/maps/rendertheme/ElementMatcher;Lorg/mapsforge/android/maps/rendertheme/ClosedMatcher;BBLorg/mapsforge/android/maps/rendertheme/AttributeMatcher;)V

    :goto_4
    return-object v1

    :pswitch_4
    invoke-static {}, Lorg/mapsforge/android/maps/rendertheme/LinearWayMatcher;->getInstance()Lorg/mapsforge/android/maps/rendertheme/LinearWayMatcher;

    move-result-object v2

    move-object v3, v2

    goto :goto_3

    :pswitch_5
    invoke-static {}, Lorg/mapsforge/android/maps/rendertheme/AnyMatcher;->getInstance()Lorg/mapsforge/android/maps/rendertheme/AnyMatcher;

    move-result-object v2

    move-object v3, v2

    goto :goto_3

    :cond_d
    const-string v1, "*"

    const/4 v6, 0x0

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-static {}, Lorg/mapsforge/android/maps/rendertheme/AnyMatcher;->getInstance()Lorg/mapsforge/android/maps/rendertheme/AnyMatcher;

    move-result-object v1

    move-object v6, v1

    :goto_5
    const-string v1, "*"

    const/4 v7, 0x0

    invoke-interface {v15, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-static {}, Lorg/mapsforge/android/maps/rendertheme/AnyMatcher;->getInstance()Lorg/mapsforge/android/maps/rendertheme/AnyMatcher;

    move-result-object v1

    :cond_e
    :goto_6
    move-object/from16 v0, p2

    invoke-static {v6, v0}, Lorg/mapsforge/android/maps/rendertheme/RuleOptimizer;->optimize(Lorg/mapsforge/android/maps/rendertheme/AttributeMatcher;Ljava/util/Stack;)Lorg/mapsforge/android/maps/rendertheme/AttributeMatcher;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-static {v1, v0}, Lorg/mapsforge/android/maps/rendertheme/RuleOptimizer;->optimize(Lorg/mapsforge/android/maps/rendertheme/AttributeMatcher;Ljava/util/Stack;)Lorg/mapsforge/android/maps/rendertheme/AttributeMatcher;

    move-result-object v7

    new-instance v1, Lorg/mapsforge/android/maps/rendertheme/PositiveRule;

    invoke-direct/range {v1 .. v7}, Lorg/mapsforge/android/maps/rendertheme/PositiveRule;-><init>(Lorg/mapsforge/android/maps/rendertheme/ElementMatcher;Lorg/mapsforge/android/maps/rendertheme/ClosedMatcher;BBLorg/mapsforge/android/maps/rendertheme/AttributeMatcher;Lorg/mapsforge/android/maps/rendertheme/AttributeMatcher;)V

    goto :goto_4

    :cond_f
    sget-object v1, Lorg/mapsforge/android/maps/rendertheme/Rule;->MATCHERS_CACHE_KEY:Ljava/util/Map;

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mapsforge/android/maps/rendertheme/AttributeMatcher;

    if-nez v1, :cond_10

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    const/4 v6, 0x1

    if-ne v1, v6, :cond_11

    new-instance v6, Lorg/mapsforge/android/maps/rendertheme/SingleKeyMatcher;

    const/4 v1, 0x0

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v6, v1}, Lorg/mapsforge/android/maps/rendertheme/SingleKeyMatcher;-><init>(Ljava/lang/String;)V

    move-object v1, v6

    :goto_7
    sget-object v6, Lorg/mapsforge/android/maps/rendertheme/Rule;->MATCHERS_CACHE_KEY:Ljava/util/Map;

    invoke-interface {v6, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    move-object v6, v1

    goto :goto_5

    :cond_11
    new-instance v1, Lorg/mapsforge/android/maps/rendertheme/MultiKeyMatcher;

    invoke-direct {v1, v7}, Lorg/mapsforge/android/maps/rendertheme/MultiKeyMatcher;-><init>(Ljava/util/List;)V

    goto :goto_7

    :cond_12
    sget-object v1, Lorg/mapsforge/android/maps/rendertheme/Rule;->MATCHERS_CACHE_VALUE:Ljava/util/Map;

    invoke-interface {v1, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mapsforge/android/maps/rendertheme/AttributeMatcher;

    if-nez v1, :cond_e

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    const/4 v7, 0x1

    if-ne v1, v7, :cond_13

    new-instance v7, Lorg/mapsforge/android/maps/rendertheme/SingleValueMatcher;

    const/4 v1, 0x0

    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v7, v1}, Lorg/mapsforge/android/maps/rendertheme/SingleValueMatcher;-><init>(Ljava/lang/String;)V

    move-object v1, v7

    :goto_8
    sget-object v7, Lorg/mapsforge/android/maps/rendertheme/Rule;->MATCHERS_CACHE_VALUE:Ljava/util/Map;

    invoke-interface {v7, v15, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_13
    new-instance v1, Lorg/mapsforge/android/maps/rendertheme/MultiValueMatcher;

    invoke-direct {v1, v15}, Lorg/mapsforge/android/maps/rendertheme/MultiValueMatcher;-><init>(Ljava/util/List;)V

    goto :goto_8

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method final addRenderingInstruction(Lorg/mapsforge/android/maps/rendertheme/renderinstruction/RenderInstruction;)V
    .locals 1
    .param p1, "renderInstruction"    # Lorg/mapsforge/android/maps/rendertheme/renderinstruction/RenderInstruction;

    .prologue
    .line 191
    iget-object v0, p0, Lorg/mapsforge/android/maps/rendertheme/Rule;->renderInstructions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    return-void
.end method

.method final addSubRule(Lorg/mapsforge/android/maps/rendertheme/Rule;)V
    .locals 1
    .param p1, "rule"    # Lorg/mapsforge/android/maps/rendertheme/Rule;

    .prologue
    .line 195
    iget-object v0, p0, Lorg/mapsforge/android/maps/rendertheme/Rule;->subRules:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    return-void
.end method

.method final matchNode(Lorg/mapsforge/android/maps/rendertheme/RenderCallback;Ljava/util/List;B)V
    .locals 3
    .param p1, "renderCallback"    # Lorg/mapsforge/android/maps/rendertheme/RenderCallback;
    .param p3, "zoomLevel"    # B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mapsforge/android/maps/rendertheme/RenderCallback;",
            "Ljava/util/List",
            "<",
            "Lorg/mapsforge/core/Tag;",
            ">;B)V"
        }
    .end annotation

    .prologue
    .line 203
    .local p2, "tags":Ljava/util/List;, "Ljava/util/List<Lorg/mapsforge/core/Tag;>;"
    invoke-virtual {p0, p2, p3}, Lorg/mapsforge/android/maps/rendertheme/Rule;->matchesNode(Ljava/util/List;B)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 204
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v2, p0, Lorg/mapsforge/android/maps/rendertheme/Rule;->renderInstructions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 205
    iget-object v2, p0, Lorg/mapsforge/android/maps/rendertheme/Rule;->renderInstructions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/RenderInstruction;

    invoke-interface {v2, p1, p2}, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/RenderInstruction;->renderNode(Lorg/mapsforge/android/maps/rendertheme/RenderCallback;Ljava/util/List;)V

    .line 204
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 207
    :cond_0
    const/4 v0, 0x0

    iget-object v2, p0, Lorg/mapsforge/android/maps/rendertheme/Rule;->subRules:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_1
    if-ge v0, v1, :cond_1

    .line 208
    iget-object v2, p0, Lorg/mapsforge/android/maps/rendertheme/Rule;->subRules:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mapsforge/android/maps/rendertheme/Rule;

    invoke-virtual {v2, p1, p2, p3}, Lorg/mapsforge/android/maps/rendertheme/Rule;->matchNode(Lorg/mapsforge/android/maps/rendertheme/RenderCallback;Ljava/util/List;B)V

    .line 207
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 211
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_1
    return-void
.end method

.method final matchWay(Lorg/mapsforge/android/maps/rendertheme/RenderCallback;Ljava/util/List;BLorg/mapsforge/android/maps/rendertheme/Closed;Ljava/util/List;)V
    .locals 8
    .param p1, "renderCallback"    # Lorg/mapsforge/android/maps/rendertheme/RenderCallback;
    .param p3, "zoomLevel"    # B
    .param p4, "closed"    # Lorg/mapsforge/android/maps/rendertheme/Closed;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mapsforge/android/maps/rendertheme/RenderCallback;",
            "Ljava/util/List",
            "<",
            "Lorg/mapsforge/core/Tag;",
            ">;B",
            "Lorg/mapsforge/android/maps/rendertheme/Closed;",
            "Ljava/util/List",
            "<",
            "Lorg/mapsforge/android/maps/rendertheme/renderinstruction/RenderInstruction;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 215
    .local p2, "tags":Ljava/util/List;, "Ljava/util/List<Lorg/mapsforge/core/Tag;>;"
    .local p5, "matchingList":Ljava/util/List;, "Ljava/util/List<Lorg/mapsforge/android/maps/rendertheme/renderinstruction/RenderInstruction;>;"
    invoke-virtual {p0, p2, p3, p4}, Lorg/mapsforge/android/maps/rendertheme/Rule;->matchesWay(Ljava/util/List;BLorg/mapsforge/android/maps/rendertheme/Closed;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 216
    const/4 v6, 0x0

    .local v6, "i":I
    iget-object v0, p0, Lorg/mapsforge/android/maps/rendertheme/Rule;->renderInstructions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    .local v7, "n":I
    :goto_0
    if-ge v6, v7, :cond_0

    .line 217
    iget-object v0, p0, Lorg/mapsforge/android/maps/rendertheme/Rule;->renderInstructions:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/RenderInstruction;

    invoke-interface {v0, p1, p2}, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/RenderInstruction;->renderWay(Lorg/mapsforge/android/maps/rendertheme/RenderCallback;Ljava/util/List;)V

    .line 218
    iget-object v0, p0, Lorg/mapsforge/android/maps/rendertheme/Rule;->renderInstructions:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 220
    :cond_0
    const/4 v6, 0x0

    iget-object v0, p0, Lorg/mapsforge/android/maps/rendertheme/Rule;->subRules:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    :goto_1
    if-ge v6, v7, :cond_1

    .line 221
    iget-object v0, p0, Lorg/mapsforge/android/maps/rendertheme/Rule;->subRules:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mapsforge/android/maps/rendertheme/Rule;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/mapsforge/android/maps/rendertheme/Rule;->matchWay(Lorg/mapsforge/android/maps/rendertheme/RenderCallback;Ljava/util/List;BLorg/mapsforge/android/maps/rendertheme/Closed;Ljava/util/List;)V

    .line 220
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 224
    .end local v6    # "i":I
    .end local v7    # "n":I
    :cond_1
    return-void
.end method

.method abstract matchesNode(Ljava/util/List;B)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/mapsforge/core/Tag;",
            ">;B)Z"
        }
    .end annotation
.end method

.method abstract matchesWay(Ljava/util/List;BLorg/mapsforge/android/maps/rendertheme/Closed;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/mapsforge/core/Tag;",
            ">;B",
            "Lorg/mapsforge/android/maps/rendertheme/Closed;",
            ")Z"
        }
    .end annotation
.end method

.method final onComplete()V
    .locals 3

    .prologue
    .line 227
    sget-object v2, Lorg/mapsforge/android/maps/rendertheme/Rule;->MATCHERS_CACHE_KEY:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 228
    sget-object v2, Lorg/mapsforge/android/maps/rendertheme/Rule;->MATCHERS_CACHE_VALUE:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 230
    iget-object v2, p0, Lorg/mapsforge/android/maps/rendertheme/Rule;->renderInstructions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->trimToSize()V

    .line 231
    iget-object v2, p0, Lorg/mapsforge/android/maps/rendertheme/Rule;->subRules:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->trimToSize()V

    .line 232
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v2, p0, Lorg/mapsforge/android/maps/rendertheme/Rule;->subRules:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 233
    iget-object v2, p0, Lorg/mapsforge/android/maps/rendertheme/Rule;->subRules:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mapsforge/android/maps/rendertheme/Rule;

    invoke-virtual {v2}, Lorg/mapsforge/android/maps/rendertheme/Rule;->onComplete()V

    .line 232
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 235
    :cond_0
    return-void
.end method

.method final scaleStrokeWidth(F)V
    .locals 3
    .param p1, "scaleFactor"    # F

    .prologue
    .line 247
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v2, p0, Lorg/mapsforge/android/maps/rendertheme/Rule;->renderInstructions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 248
    iget-object v2, p0, Lorg/mapsforge/android/maps/rendertheme/Rule;->renderInstructions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/RenderInstruction;

    invoke-interface {v2, p1}, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/RenderInstruction;->scaleStrokeWidth(F)V

    .line 247
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 250
    :cond_0
    const/4 v0, 0x0

    iget-object v2, p0, Lorg/mapsforge/android/maps/rendertheme/Rule;->subRules:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_1
    if-ge v0, v1, :cond_1

    .line 251
    iget-object v2, p0, Lorg/mapsforge/android/maps/rendertheme/Rule;->subRules:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mapsforge/android/maps/rendertheme/Rule;

    invoke-virtual {v2, p1}, Lorg/mapsforge/android/maps/rendertheme/Rule;->scaleStrokeWidth(F)V

    .line 250
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 253
    :cond_1
    return-void
.end method

.method final scaleTextSize(F)V
    .locals 3
    .param p1, "scaleFactor"    # F

    .prologue
    .line 256
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v2, p0, Lorg/mapsforge/android/maps/rendertheme/Rule;->renderInstructions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 257
    iget-object v2, p0, Lorg/mapsforge/android/maps/rendertheme/Rule;->renderInstructions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/RenderInstruction;

    invoke-interface {v2, p1}, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/RenderInstruction;->scaleTextSize(F)V

    .line 256
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 259
    :cond_0
    const/4 v0, 0x0

    iget-object v2, p0, Lorg/mapsforge/android/maps/rendertheme/Rule;->subRules:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_1
    if-ge v0, v1, :cond_1

    .line 260
    iget-object v2, p0, Lorg/mapsforge/android/maps/rendertheme/Rule;->subRules:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mapsforge/android/maps/rendertheme/Rule;

    invoke-virtual {v2, p1}, Lorg/mapsforge/android/maps/rendertheme/Rule;->scaleTextSize(F)V

    .line 259
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 262
    :cond_1
    return-void
.end method
