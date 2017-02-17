.class public final Lnet/veritran/ThemeManager;
.super Ljava/lang/Object;
.source "ThemeManager.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static theme:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationTheme;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string v0, "ThemeManager"

    sput-object v0, Lnet/veritran/ThemeManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyTheme(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;)V
    .locals 1
    .param p0, "component"    # Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lnet/veritran/ThemeManager;->applyTheme(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)V

    .line 34
    return-void
.end method

.method public static applyTheme(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)V
    .locals 18
    .param p0, "component"    # Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;
    .param p1, "ara"    # Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    .prologue
    .line 65
    sget-object v15, Lnet/veritran/ThemeManager;->theme:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationTheme;

    if-nez v15, :cond_1

    .line 136
    :cond_0
    return-void

    .line 71
    :cond_1
    const-string v15, "tag"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 73
    .local v6, "componentTag":Ljava/lang/String;
    const-string v15, "cssclass"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 74
    .local v5, "componentClasses":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-static {v5, v0}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v5

    .line 76
    const/4 v3, 0x0

    .line 77
    .local v3, "classes":[Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 78
    const-string v15, ","

    invoke-virtual {v5, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 81
    :cond_2
    sget-object v15, Lnet/veritran/ThemeManager;->theme:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationTheme;

    invoke-virtual {v15}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationTheme;->getElements()Ljava/util/List;

    move-result-object v10

    .line 84
    .local v10, "elements":Ljava/util/List;, "Ljava/util/List<Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationThemeElement;>;"
    if-eqz v3, :cond_7

    .line 85
    array-length v15, v3

    add-int/lit8 v11, v15, -0x1

    .local v11, "i":I
    :goto_0
    const/4 v15, -0x1

    if-le v11, v15, :cond_7

    .line 86
    aget-object v15, v3, v11

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 88
    .local v4, "componentClass":Ljava/lang/String;
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_6

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationThemeElement;

    .line 89
    .local v9, "element":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationThemeElement;
    invoke-virtual {v9}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationThemeElement;->getElementTag()Ljava/lang/String;

    move-result-object v14

    .line 91
    .local v14, "tag":Ljava/lang/String;
    invoke-virtual {v9}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationThemeElement;->getElementClass()Ljava/lang/String;

    move-result-object v7

    .line 93
    .local v7, "cssClass":Ljava/lang/String;
    if-eqz v7, :cond_3

    invoke-virtual {v7, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 94
    if-eqz v14, :cond_4

    invoke-virtual {v14, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 95
    :cond_4
    invoke-virtual {v9}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationThemeElement;->getProperties()Ljava/util/List;

    move-result-object v12

    .line 96
    .local v12, "properties":Ljava/util/List;, "Ljava/util/List<Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationThemeProperty;>;"
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_5
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_3

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationThemeProperty;

    .line 97
    .local v13, "property":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationThemeProperty;
    invoke-virtual {v13}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationThemeProperty;->getPropertyId()Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, "attName":Ljava/lang/String;
    invoke-virtual {v13}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationThemeProperty;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 101
    .local v2, "attValue":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 103
    .local v8, "currentValue":Ljava/lang/String;
    if-nez v8, :cond_5

    .line 105
    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->putAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 85
    .end local v1    # "attName":Ljava/lang/String;
    .end local v2    # "attValue":Ljava/lang/String;
    .end local v7    # "cssClass":Ljava/lang/String;
    .end local v8    # "currentValue":Ljava/lang/String;
    .end local v9    # "element":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationThemeElement;
    .end local v12    # "properties":Ljava/util/List;, "Ljava/util/List<Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationThemeProperty;>;"
    .end local v13    # "property":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationThemeProperty;
    .end local v14    # "tag":Ljava/lang/String;
    :cond_6
    add-int/lit8 v11, v11, -0x1

    goto :goto_0

    .line 115
    .end local v4    # "componentClass":Ljava/lang/String;
    .end local v11    # "i":I
    :cond_7
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_8
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_0

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationThemeElement;

    .line 116
    .restart local v9    # "element":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationThemeElement;
    invoke-virtual {v9}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationThemeElement;->getElementTag()Ljava/lang/String;

    move-result-object v14

    .line 118
    .restart local v14    # "tag":Ljava/lang/String;
    invoke-virtual {v9}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationThemeElement;->getElementClass()Ljava/lang/String;

    move-result-object v7

    .line 120
    .restart local v7    # "cssClass":Ljava/lang/String;
    if-eqz v14, :cond_8

    invoke-virtual {v14, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_8

    if-nez v7, :cond_8

    .line 121
    invoke-virtual {v9}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationThemeElement;->getProperties()Ljava/util/List;

    move-result-object v12

    .line 122
    .restart local v12    # "properties":Ljava/util/List;, "Ljava/util/List<Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationThemeProperty;>;"
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_9
    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_8

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationThemeProperty;

    .line 123
    .restart local v13    # "property":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationThemeProperty;
    invoke-virtual {v13}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationThemeProperty;->getPropertyId()Ljava/lang/String;

    move-result-object v1

    .line 125
    .restart local v1    # "attName":Ljava/lang/String;
    invoke-virtual {v13}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationThemeProperty;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 127
    .restart local v2    # "attValue":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 129
    .restart local v8    # "currentValue":Ljava/lang/String;
    if-nez v8, :cond_9

    .line 131
    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->putAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static attributesInCssClass(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 10
    .param p0, "componentClass"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 40
    .local v7, "res":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v8, Lnet/veritran/ThemeManager;->theme:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationTheme;

    invoke-virtual {v8}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationTheme;->getElements()Ljava/util/List;

    move-result-object v4

    .line 42
    .local v4, "elements":Ljava/util/List;, "Ljava/util/List<Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationThemeElement;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationThemeElement;

    .line 44
    .local v3, "element":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationThemeElement;
    invoke-virtual {v3}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationThemeElement;->getElementClass()Ljava/lang/String;

    move-result-object v2

    .line 46
    .local v2, "cssClass":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 48
    invoke-virtual {v3}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationThemeElement;->getProperties()Ljava/util/List;

    move-result-object v5

    .line 49
    .local v5, "properties":Ljava/util/List;, "Ljava/util/List<Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationThemeProperty;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationThemeProperty;

    .line 50
    .local v6, "property":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationThemeProperty;
    invoke-virtual {v6}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationThemeProperty;->getPropertyId()Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, "attName":Ljava/lang/String;
    invoke-virtual {v6}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationThemeProperty;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 54
    .local v1, "attValue":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 61
    .end local v0    # "attName":Ljava/lang/String;
    .end local v1    # "attValue":Ljava/lang/String;
    .end local v2    # "cssClass":Ljava/lang/String;
    .end local v3    # "element":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationThemeElement;
    .end local v5    # "properties":Ljava/util/List;, "Ljava/util/List<Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationThemeProperty;>;"
    .end local v6    # "property":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationThemeProperty;
    :cond_1
    return-object v7
.end method

.method public static getTheme()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationTheme;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lnet/veritran/ThemeManager;->theme:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationTheme;

    return-object v0
.end method

.method public static setTheme(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationTheme;)V
    .locals 0
    .param p0, "t"    # Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationTheme;

    .prologue
    .line 29
    sput-object p0, Lnet/veritran/ThemeManager;->theme:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationTheme;

    .line 30
    return-void
.end method
