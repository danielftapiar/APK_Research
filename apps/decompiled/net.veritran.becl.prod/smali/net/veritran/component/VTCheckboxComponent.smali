.class public Lnet/veritran/component/VTCheckboxComponent;
.super Lnet/veritran/component/VTUIComponent;
.source "VTCheckboxComponent.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/view/View$OnFocusChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "VTCheckboxComponent"

.field public static final VALUES_SEPARATOR:Ljava/lang/String; = ";"


# instance fields
.field private autoDump:Ljava/lang/Integer;

.field private displayName:Ljava/lang/String;

.field private onBlur:Ljava/lang/String;

.field private onCheck:Ljava/lang/String;

.field private onFocus:Ljava/lang/String;

.field private onUncheck:Ljava/lang/String;

.field private registerValuesCount:Ljava/lang/Integer;

.field private required:Ljava/lang/Boolean;

.field private targetvar:Ljava/lang/Integer;

.field private type:Ljava/lang/String;

.field private value:Ljava/lang/String;

.field private vtCheckboxComponentView:Lnet/veritran/component/view/VTUICompoundButtonView;


# direct methods
.method public constructor <init>(Lnet/veritran/VTCommonActivity;)V
    .locals 1
    .param p1, "activity"    # Lnet/veritran/VTCommonActivity;

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-direct {p0}, Lnet/veritran/component/VTUIComponent;-><init>()V

    .line 29
    iput-object v0, p0, Lnet/veritran/component/VTCheckboxComponent;->type:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lnet/veritran/component/VTCheckboxComponent;->displayName:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lnet/veritran/component/VTCheckboxComponent;->value:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lnet/veritran/component/VTCheckboxComponent;->autoDump:Ljava/lang/Integer;

    .line 34
    iput-object v0, p0, Lnet/veritran/component/VTCheckboxComponent;->registerValuesCount:Ljava/lang/Integer;

    .line 35
    iput-object v0, p0, Lnet/veritran/component/VTCheckboxComponent;->targetvar:Ljava/lang/Integer;

    .line 37
    iput-object v0, p0, Lnet/veritran/component/VTCheckboxComponent;->required:Ljava/lang/Boolean;

    .line 39
    iput-object v0, p0, Lnet/veritran/component/VTCheckboxComponent;->onFocus:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lnet/veritran/component/VTCheckboxComponent;->onBlur:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lnet/veritran/component/VTCheckboxComponent;->onCheck:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lnet/veritran/component/VTCheckboxComponent;->onUncheck:Ljava/lang/String;

    .line 48
    invoke-virtual {p0, p1}, Lnet/veritran/component/VTCheckboxComponent;->setActivity(Lnet/veritran/VTCommonActivity;)V

    .line 50
    return-void
.end method

.method private initCheckbox()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v8, 0x0

    .line 133
    iput-object v8, p0, Lnet/veritran/component/VTCheckboxComponent;->onFocus:Ljava/lang/String;

    .line 134
    iput-object v8, p0, Lnet/veritran/component/VTCheckboxComponent;->onBlur:Ljava/lang/String;

    .line 135
    iput-object v8, p0, Lnet/veritran/component/VTCheckboxComponent;->onCheck:Ljava/lang/String;

    .line 136
    iput-object v8, p0, Lnet/veritran/component/VTCheckboxComponent;->onUncheck:Ljava/lang/String;

    .line 138
    iget-object v8, p0, Lnet/veritran/component/VTCheckboxComponent;->type:Ljava/lang/String;

    const-string v9, "CUSTOM"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 140
    iget-object v8, p0, Lnet/veritran/component/VTCheckboxComponent;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v9, "background-image-on"

    invoke-virtual {v8, v9}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lnet/veritran/component/VTCheckboxComponent;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v9

    invoke-static {v8, v9}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v2

    .line 141
    .local v2, "imageOnName":Ljava/lang/String;
    if-eqz v2, :cond_6

    const-string v8, ""

    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 142
    iget-object v8, p0, Lnet/veritran/component/VTCheckboxComponent;->vtCheckboxComponentView:Lnet/veritran/component/view/VTUICompoundButtonView;

    invoke-interface {v8, v2}, Lnet/veritran/component/view/VTUICompoundButtonView;->setImageOnName(Ljava/lang/String;)V

    .line 147
    :goto_0
    iget-object v8, p0, Lnet/veritran/component/VTCheckboxComponent;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v9, "background-image-off"

    invoke-virtual {v8, v9}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lnet/veritran/component/VTCheckboxComponent;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v9

    invoke-static {v8, v9}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v1

    .line 148
    .local v1, "imageOffName":Ljava/lang/String;
    if-eqz v1, :cond_7

    const-string v8, ""

    invoke-virtual {v1, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 149
    iget-object v8, p0, Lnet/veritran/component/VTCheckboxComponent;->vtCheckboxComponentView:Lnet/veritran/component/view/VTUICompoundButtonView;

    invoke-interface {v8, v1}, Lnet/veritran/component/view/VTUICompoundButtonView;->setImageOffName(Ljava/lang/String;)V

    .line 155
    .end local v1    # "imageOffName":Ljava/lang/String;
    .end local v2    # "imageOnName":Ljava/lang/String;
    :cond_0
    :goto_1
    iget-object v8, p0, Lnet/veritran/component/VTCheckboxComponent;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v9, "autodump"

    invoke-virtual {v8, v9}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 156
    .local v4, "sAutoDump":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 157
    invoke-virtual {p0}, Lnet/veritran/component/VTCheckboxComponent;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v8

    invoke-static {v4, v8}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v4

    .line 158
    const-string v8, ""

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 160
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iput-object v8, p0, Lnet/veritran/component/VTCheckboxComponent;->autoDump:Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    :cond_1
    :goto_2
    iget-object v8, p0, Lnet/veritran/component/VTCheckboxComponent;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v9, "valuescount"

    invoke-virtual {v8, v9}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lnet/veritran/component/VTCheckboxComponent;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v9

    invoke-static {v8, v9}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v5

    .line 168
    .local v5, "sRegisterValuesCount":Ljava/lang/String;
    const-string v8, ""

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 170
    :try_start_1
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iput-object v8, p0, Lnet/veritran/component/VTCheckboxComponent;->registerValuesCount:Ljava/lang/Integer;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 176
    :cond_2
    :goto_3
    iget-object v8, p0, Lnet/veritran/component/VTCheckboxComponent;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v9, "targetvar"

    invoke-virtual {v8, v9}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lnet/veritran/component/VTCheckboxComponent;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v9

    invoke-static {v8, v9}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v7

    .line 177
    .local v7, "sTargetvar":Ljava/lang/String;
    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 179
    :try_start_2
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iput-object v8, p0, Lnet/veritran/component/VTCheckboxComponent;->targetvar:Ljava/lang/Integer;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 185
    :cond_3
    :goto_4
    iget-object v8, p0, Lnet/veritran/component/VTCheckboxComponent;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v9, "value"

    invoke-virtual {v8, v9}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lnet/veritran/component/VTCheckboxComponent;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v9

    invoke-static {v8, v9}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lnet/veritran/component/VTCheckboxComponent;->value:Ljava/lang/String;

    .line 186
    iget-object v8, p0, Lnet/veritran/component/VTCheckboxComponent;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v9, "displayName"

    invoke-virtual {v8, v9}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lnet/veritran/component/VTCheckboxComponent;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v9

    invoke-static {v8, v9}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lnet/veritran/component/VTCheckboxComponent;->displayName:Ljava/lang/String;

    .line 188
    iget-object v8, p0, Lnet/veritran/component/VTCheckboxComponent;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v9, "required"

    invoke-virtual {v8, v9}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lnet/veritran/component/VTCheckboxComponent;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v9

    invoke-static {v8, v9}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v6

    .line 189
    .local v6, "sRequired":Ljava/lang/String;
    const-string v8, "TRUE"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string v8, "SI"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 190
    :cond_4
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iput-object v8, p0, Lnet/veritran/component/VTCheckboxComponent;->required:Ljava/lang/Boolean;

    .line 195
    :goto_5
    iget-object v8, p0, Lnet/veritran/component/VTCheckboxComponent;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v9, "checked"

    invoke-virtual {v8, v9}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lnet/veritran/component/VTCheckboxComponent;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v9

    invoke-static {v8, v9}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, "checked":Ljava/lang/String;
    if-eqz v0, :cond_9

    const-string v8, "SI"

    .line 197
    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5

    const-string v8, "TRUE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 198
    :cond_5
    iget-object v8, p0, Lnet/veritran/component/VTCheckboxComponent;->vtCheckboxComponentView:Lnet/veritran/component/view/VTUICompoundButtonView;

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-interface {v8, v9}, Lnet/veritran/component/view/VTUICompoundButtonView;->setChecked(Ljava/lang/Boolean;)V

    .line 203
    :goto_6
    invoke-direct {p0}, Lnet/veritran/component/VTCheckboxComponent;->updateAutoDump()V

    .line 205
    iget-object v8, p0, Lnet/veritran/component/VTCheckboxComponent;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v9, "onfocus"

    invoke-virtual {v8, v9}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lnet/veritran/component/VTCheckboxComponent;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v9

    invoke-static {v8, v9}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lnet/veritran/component/VTCheckboxComponent;->onFocus:Ljava/lang/String;

    .line 206
    iget-object v8, p0, Lnet/veritran/component/VTCheckboxComponent;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v9, "onblur"

    invoke-virtual {v8, v9}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lnet/veritran/component/VTCheckboxComponent;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v9

    invoke-static {v8, v9}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lnet/veritran/component/VTCheckboxComponent;->onBlur:Ljava/lang/String;

    .line 207
    iget-object v8, p0, Lnet/veritran/component/VTCheckboxComponent;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v9, "oncheck"

    invoke-virtual {v8, v9}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lnet/veritran/component/VTCheckboxComponent;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v9

    invoke-static {v8, v9}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lnet/veritran/component/VTCheckboxComponent;->onCheck:Ljava/lang/String;

    .line 208
    iget-object v8, p0, Lnet/veritran/component/VTCheckboxComponent;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v9, "onuncheck"

    invoke-virtual {v8, v9}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lnet/veritran/component/VTCheckboxComponent;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v9

    invoke-static {v8, v9}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lnet/veritran/component/VTCheckboxComponent;->onUncheck:Ljava/lang/String;

    .line 210
    invoke-virtual {p0}, Lnet/veritran/component/VTCheckboxComponent;->defineWidth()V

    .line 211
    invoke-virtual {p0}, Lnet/veritran/component/VTCheckboxComponent;->defineHeight()V

    .line 212
    invoke-virtual {p0}, Lnet/veritran/component/VTCheckboxComponent;->defineVisibility()V

    .line 213
    invoke-virtual {p0}, Lnet/veritran/component/VTCheckboxComponent;->defineMargins()V

    .line 214
    return-void

    .line 144
    .end local v0    # "checked":Ljava/lang/String;
    .end local v4    # "sAutoDump":Ljava/lang/String;
    .end local v5    # "sRegisterValuesCount":Ljava/lang/String;
    .end local v6    # "sRequired":Ljava/lang/String;
    .end local v7    # "sTargetvar":Ljava/lang/String;
    .restart local v2    # "imageOnName":Ljava/lang/String;
    :cond_6
    iget-object v8, p0, Lnet/veritran/component/VTCheckboxComponent;->vtCheckboxComponentView:Lnet/veritran/component/view/VTUICompoundButtonView;

    const-string v9, "chk_on"

    invoke-interface {v8, v9}, Lnet/veritran/component/view/VTUICompoundButtonView;->setImageOnName(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 151
    .restart local v1    # "imageOffName":Ljava/lang/String;
    :cond_7
    iget-object v8, p0, Lnet/veritran/component/VTCheckboxComponent;->vtCheckboxComponentView:Lnet/veritran/component/view/VTUICompoundButtonView;

    const-string v9, "chk_off"

    invoke-interface {v8, v9}, Lnet/veritran/component/view/VTUICompoundButtonView;->setImageOffName(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 161
    .end local v1    # "imageOffName":Ljava/lang/String;
    .end local v2    # "imageOnName":Ljava/lang/String;
    .restart local v4    # "sAutoDump":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 162
    .local v3, "nfe":Ljava/lang/NumberFormatException;
    const-string v8, "VTCheckboxComponent"

    const-string v9, "Catched exception empty (fortify)"

    invoke-static {v8, v9}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 171
    .end local v3    # "nfe":Ljava/lang/NumberFormatException;
    .restart local v5    # "sRegisterValuesCount":Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 172
    .restart local v3    # "nfe":Ljava/lang/NumberFormatException;
    const-string v8, "VTCheckboxComponent"

    const-string v9, "Catched exception empty (fortify)"

    invoke-static {v8, v9}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 180
    .end local v3    # "nfe":Ljava/lang/NumberFormatException;
    .restart local v7    # "sTargetvar":Ljava/lang/String;
    :catch_2
    move-exception v3

    .line 181
    .restart local v3    # "nfe":Ljava/lang/NumberFormatException;
    const-string v8, "VTCheckboxComponent"

    const-string v9, "Catched exception empty (fortify)"

    invoke-static {v8, v9}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 192
    .end local v3    # "nfe":Ljava/lang/NumberFormatException;
    .restart local v6    # "sRequired":Ljava/lang/String;
    :cond_8
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iput-object v8, p0, Lnet/veritran/component/VTCheckboxComponent;->required:Ljava/lang/Boolean;

    goto/16 :goto_5

    .line 201
    .restart local v0    # "checked":Ljava/lang/String;
    :cond_9
    iget-object v8, p0, Lnet/veritran/component/VTCheckboxComponent;->vtCheckboxComponentView:Lnet/veritran/component/view/VTUICompoundButtonView;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-interface {v8, v9}, Lnet/veritran/component/view/VTUICompoundButtonView;->setChecked(Ljava/lang/Boolean;)V

    goto/16 :goto_6
.end method

.method private updateAutoDump()V
    .locals 10

    .prologue
    .line 238
    iget-object v6, p0, Lnet/veritran/component/VTCheckboxComponent;->autoDump:Ljava/lang/Integer;

    if-eqz v6, :cond_1

    .line 239
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v6

    iget-object v7, p0, Lnet/veritran/component/VTCheckboxComponent;->autoDump:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Lnet/veritran/vtuserapplication/model/Model;->getSafeRegisterValue(I)Ljava/lang/String;

    move-result-object v3

    .line 241
    .local v3, "registerValue":Ljava/lang/String;
    const/4 v5, 0x0

    .line 243
    .local v5, "valuesCount":I
    const-string v6, ""

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 244
    iget-object v6, p0, Lnet/veritran/component/VTCheckboxComponent;->vtCheckboxComponentView:Lnet/veritran/component/view/VTUICompoundButtonView;

    invoke-interface {v6}, Lnet/veritran/component/view/VTUICompoundButtonView;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 245
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v6

    iget-object v7, p0, Lnet/veritran/component/VTCheckboxComponent;->autoDump:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v8, p0, Lnet/veritran/component/VTCheckboxComponent;->value:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lnet/veritran/vtuserapplication/model/Model;->addRegister(ILjava/lang/String;)V

    .line 246
    const/4 v5, 0x1

    .line 274
    :cond_0
    :goto_0
    iget-object v6, p0, Lnet/veritran/component/VTCheckboxComponent;->registerValuesCount:Ljava/lang/Integer;

    if-eqz v6, :cond_1

    .line 275
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v6

    iget-object v7, p0, Lnet/veritran/component/VTCheckboxComponent;->registerValuesCount:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lnet/veritran/vtuserapplication/model/Model;->addRegister(ILjava/lang/String;)V

    .line 279
    .end local v3    # "registerValue":Ljava/lang/String;
    .end local v5    # "valuesCount":I
    :cond_1
    return-void

    .line 250
    .restart local v3    # "registerValue":Ljava/lang/String;
    .restart local v5    # "valuesCount":I
    :cond_2
    new-instance v2, Ljava/util/LinkedList;

    const-string v6, ";"

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 251
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v6, p0, Lnet/veritran/component/VTCheckboxComponent;->value:Ljava/lang/String;

    invoke-interface {v2, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 253
    .local v0, "exists":Z
    iget-object v6, p0, Lnet/veritran/component/VTCheckboxComponent;->vtCheckboxComponentView:Lnet/veritran/component/view/VTUICompoundButtonView;

    invoke-interface {v6}, Lnet/veritran/component/view/VTUICompoundButtonView;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_3

    if-nez v0, :cond_3

    .line 254
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v6

    iget-object v7, p0, Lnet/veritran/component/VTCheckboxComponent;->autoDump:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lnet/veritran/component/VTCheckboxComponent;->value:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lnet/veritran/vtuserapplication/model/Model;->addRegister(ILjava/lang/String;)V

    .line 255
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v5, v6, 0x1

    goto :goto_0

    .line 257
    :cond_3
    iget-object v6, p0, Lnet/veritran/component/VTCheckboxComponent;->vtCheckboxComponentView:Lnet/veritran/component/view/VTUICompoundButtonView;

    invoke-interface {v6}, Lnet/veritran/component/view/VTUICompoundButtonView;->isChecked()Z

    move-result v6

    if-nez v6, :cond_0

    if-eqz v0, :cond_0

    .line 258
    iget-object v6, p0, Lnet/veritran/component/VTCheckboxComponent;->value:Ljava/lang/String;

    invoke-interface {v2, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 259
    const-string v4, ""

    .line 260
    .local v4, "tmpValue":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 261
    .local v1, "item":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 262
    goto :goto_1

    .line 263
    .end local v1    # "item":Ljava/lang/String;
    :cond_4
    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 264
    const/4 v6, 0x0

    const-string v7, ";"

    invoke-virtual {v4, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 268
    :cond_5
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v6

    iget-object v7, p0, Lnet/veritran/component/VTCheckboxComponent;->autoDump:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7, v4}, Lnet/veritran/vtuserapplication/model/Model;->addRegister(ILjava/lang/String;)V

    .line 269
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    goto/16 :goto_0
.end method


# virtual methods
.method public executeEvent(Ljava/lang/String;)Z
    .locals 4
    .param p1, "event"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 80
    invoke-virtual {p0, p1}, Lnet/veritran/component/VTCheckboxComponent;->checkEventType(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Lnet/veritran/component/VTCheckboxComponent;->isRefreshEvent()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 82
    invoke-direct {p0}, Lnet/veritran/component/VTCheckboxComponent;->initCheckbox()V

    .line 83
    invoke-virtual {p0}, Lnet/veritran/component/VTCheckboxComponent;->refreshMeasure()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {p0}, Lnet/veritran/component/VTCheckboxComponent;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 85
    invoke-virtual {p0}, Lnet/veritran/component/VTCheckboxComponent;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    :goto_0
    move v0, v1

    .line 102
    :cond_1
    return v0

    .line 87
    :cond_2
    invoke-virtual {p0}, Lnet/veritran/component/VTCheckboxComponent;->isVisibilityEvent()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 88
    invoke-virtual {p0}, Lnet/veritran/component/VTCheckboxComponent;->updateVisibility()V

    goto :goto_0

    .line 89
    :cond_3
    const-string v2, "CHECK"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 90
    iget-object v0, p0, Lnet/veritran/component/VTCheckboxComponent;->vtCheckboxComponentView:Lnet/veritran/component/view/VTUICompoundButtonView;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v2}, Lnet/veritran/component/view/VTUICompoundButtonView;->setChecked(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 92
    :cond_4
    const-string v2, "UNCHECK"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 93
    iget-object v2, p0, Lnet/veritran/component/VTCheckboxComponent;->vtCheckboxComponentView:Lnet/veritran/component/view/VTUICompoundButtonView;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v2, v0}, Lnet/veritran/component/view/VTUICompoundButtonView;->setChecked(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 95
    :cond_5
    const-string v2, "TOGGLE"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 96
    iget-object v2, p0, Lnet/veritran/component/VTCheckboxComponent;->vtCheckboxComponentView:Lnet/veritran/component/view/VTUICompoundButtonView;

    iget-object v3, p0, Lnet/veritran/component/VTCheckboxComponent;->vtCheckboxComponentView:Lnet/veritran/component/view/VTUICompoundButtonView;

    invoke-interface {v3}, Lnet/veritran/component/view/VTUICompoundButtonView;->isChecked()Z

    move-result v3

    if-nez v3, :cond_6

    move v0, v1

    :cond_6
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v2, v0}, Lnet/veritran/component/view/VTUICompoundButtonView;->setChecked(Ljava/lang/Boolean;)V

    goto :goto_0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lnet/veritran/component/VTCheckboxComponent;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getRegisterValuesCount()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lnet/veritran/component/VTCheckboxComponent;->registerValuesCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRequired()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lnet/veritran/component/VTCheckboxComponent;->required:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getTargetvar()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lnet/veritran/component/VTCheckboxComponent;->targetvar:Ljava/lang/Integer;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lnet/veritran/component/VTCheckboxComponent;->value:Ljava/lang/String;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lnet/veritran/component/VTCheckboxComponent;->vtCheckboxComponentView:Lnet/veritran/component/view/VTUICompoundButtonView;

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public init()V
    .locals 5

    .prologue
    .line 107
    invoke-super {p0}, Lnet/veritran/component/VTUIComponent;->init()V

    .line 109
    iget-object v0, p0, Lnet/veritran/component/VTCheckboxComponent;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v1, "type"

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lnet/veritran/component/VTCheckboxComponent;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/veritran/component/VTCheckboxComponent;->type:Ljava/lang/String;

    .line 111
    iget-object v0, p0, Lnet/veritran/component/VTCheckboxComponent;->type:Ljava/lang/String;

    const-string v1, "CUSTOM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    new-instance v0, Lnet/veritran/component/view/VTCheckboxImageComponentView;

    invoke-direct {v0, p0}, Lnet/veritran/component/view/VTCheckboxImageComponentView;-><init>(Lnet/veritran/component/VTUIComponent;)V

    iput-object v0, p0, Lnet/veritran/component/VTCheckboxComponent;->vtCheckboxComponentView:Lnet/veritran/component/view/VTUICompoundButtonView;

    .line 123
    :goto_0
    invoke-virtual {p0}, Lnet/veritran/component/VTCheckboxComponent;->getActivity()Lnet/veritran/VTCommonActivity;

    move-result-object v0

    iget-object v2, v0, Lnet/veritran/VTCommonActivity;->inputs:Lnet/veritran/VTCommonActivity$InputsByArea;

    const-string v3, "all"

    new-instance v4, Lnet/veritran/VisualInputComponent;

    iget-object v0, p0, Lnet/veritran/component/VTCheckboxComponent;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    check-cast v0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTCheckbox;

    iget-object v1, p0, Lnet/veritran/component/VTCheckboxComponent;->vtCheckboxComponentView:Lnet/veritran/component/view/VTUICompoundButtonView;

    check-cast v1, Landroid/view/View;

    invoke-direct {v4, v0, v1}, Lnet/veritran/VisualInputComponent;-><init>(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTCheckbox;Landroid/view/View;)V

    invoke-virtual {v2, v3, v4}, Lnet/veritran/VTCommonActivity$InputsByArea;->put(Ljava/lang/String;Lnet/veritran/VisualInputComponent;)V

    .line 125
    invoke-direct {p0}, Lnet/veritran/component/VTCheckboxComponent;->initCheckbox()V

    .line 127
    iget-object v0, p0, Lnet/veritran/component/VTCheckboxComponent;->vtCheckboxComponentView:Lnet/veritran/component/view/VTUICompoundButtonView;

    invoke-interface {v0, p0}, Lnet/veritran/component/view/VTUICompoundButtonView;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 128
    iget-object v0, p0, Lnet/veritran/component/VTCheckboxComponent;->vtCheckboxComponentView:Lnet/veritran/component/view/VTUICompoundButtonView;

    invoke-interface {v0, p0}, Lnet/veritran/component/view/VTUICompoundButtonView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 129
    return-void

    .line 114
    :cond_0
    iget-object v0, p0, Lnet/veritran/component/VTCheckboxComponent;->type:Ljava/lang/String;

    const-string v1, "TOGGLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    .line 115
    new-instance v0, Lnet/veritran/component/view/VTCheckboxToggleComponentView;

    invoke-direct {v0, p0}, Lnet/veritran/component/view/VTCheckboxToggleComponentView;-><init>(Lnet/veritran/component/VTUIComponent;)V

    iput-object v0, p0, Lnet/veritran/component/VTCheckboxComponent;->vtCheckboxComponentView:Lnet/veritran/component/view/VTUICompoundButtonView;

    goto :goto_0

    .line 119
    :cond_1
    new-instance v0, Lnet/veritran/component/view/VTCheckboxComponentView;

    invoke-direct {v0, p0}, Lnet/veritran/component/view/VTCheckboxComponentView;-><init>(Lnet/veritran/component/VTUIComponent;)V

    iput-object v0, p0, Lnet/veritran/component/VTCheckboxComponent;->vtCheckboxComponentView:Lnet/veritran/component/view/VTUICompoundButtonView;

    goto :goto_0
.end method

.method public keepStatusesToBundle()Z
    .locals 1

    .prologue
    .line 223
    const/4 v0, 0x1

    return v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 284
    invoke-direct {p0}, Lnet/veritran/component/VTCheckboxComponent;->updateAutoDump()V

    .line 285
    if-eqz p2, :cond_1

    iget-object v0, p0, Lnet/veritran/component/VTCheckboxComponent;->onCheck:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/veritran/component/VTCheckboxComponent;->onCheck:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 286
    invoke-virtual {p0}, Lnet/veritran/component/VTCheckboxComponent;->getActivity()Lnet/veritran/VTCommonActivity;

    move-result-object v0

    iget-object v1, p0, Lnet/veritran/component/VTCheckboxComponent;->onCheck:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnet/veritran/VTCommonActivity;->processAction(Ljava/lang/String;)V

    .line 291
    :cond_0
    :goto_0
    return-void

    .line 288
    :cond_1
    if-nez p2, :cond_0

    iget-object v0, p0, Lnet/veritran/component/VTCheckboxComponent;->onUncheck:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/veritran/component/VTCheckboxComponent;->onUncheck:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 289
    invoke-virtual {p0}, Lnet/veritran/component/VTCheckboxComponent;->getActivity()Lnet/veritran/VTCommonActivity;

    move-result-object v0

    iget-object v1, p0, Lnet/veritran/component/VTCheckboxComponent;->onUncheck:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnet/veritran/VTCommonActivity;->processAction(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 295
    iget-object v0, p0, Lnet/veritran/component/VTCheckboxComponent;->onFocus:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/veritran/component/VTCheckboxComponent;->onFocus:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    .line 296
    invoke-virtual {p0}, Lnet/veritran/component/VTCheckboxComponent;->getActivity()Lnet/veritran/VTCommonActivity;

    move-result-object v0

    iget-object v1, p0, Lnet/veritran/component/VTCheckboxComponent;->onFocus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnet/veritran/VTCommonActivity;->processAction(Ljava/lang/String;)V

    .line 302
    :cond_0
    :goto_0
    return-void

    .line 298
    :cond_1
    iget-object v0, p0, Lnet/veritran/component/VTCheckboxComponent;->onBlur:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/veritran/component/VTCheckboxComponent;->onBlur:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    .line 299
    invoke-virtual {p0}, Lnet/veritran/component/VTCheckboxComponent;->getActivity()Lnet/veritran/VTCommonActivity;

    move-result-object v0

    iget-object v1, p0, Lnet/veritran/component/VTCheckboxComponent;->onBlur:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnet/veritran/VTCommonActivity;->processAction(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public restoreStatusFromBundle(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 233
    iget-object v0, p0, Lnet/veritran/component/VTCheckboxComponent;->vtCheckboxComponentView:Lnet/veritran/component/view/VTUICompoundButtonView;

    const-string v1, "checked"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/veritran/component/view/VTUICompoundButtonView;->setChecked(Ljava/lang/Boolean;)V

    .line 234
    invoke-direct {p0}, Lnet/veritran/component/VTCheckboxComponent;->updateAutoDump()V

    .line 235
    return-void
.end method

.method public saveStatusToBundle(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 228
    const-string v0, "checked"

    iget-object v1, p0, Lnet/veritran/component/VTCheckboxComponent;->vtCheckboxComponentView:Lnet/veritran/component/view/VTUICompoundButtonView;

    invoke-interface {v1}, Lnet/veritran/component/view/VTUICompoundButtonView;->isChecked()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 229
    return-void
.end method

.method public supportEvents()Z
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x1

    return v0
.end method
