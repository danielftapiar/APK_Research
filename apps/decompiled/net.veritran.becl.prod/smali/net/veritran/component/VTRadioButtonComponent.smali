.class public Lnet/veritran/component/VTRadioButtonComponent;
.super Lnet/veritran/component/VTUIComponent;
.source "VTRadioButtonComponent.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/view/View$OnFocusChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "VTCheckboxComponent"


# instance fields
.field private autoDump:Ljava/lang/Integer;

.field private displayName:Ljava/lang/String;

.field private onBlur:Ljava/lang/String;

.field private onFocus:Ljava/lang/String;

.field private radioGroup:Ljava/lang/String;

.field private required:Ljava/lang/Boolean;

.field private targetvar:Ljava/lang/Integer;

.field private type:Ljava/lang/String;

.field private value:Ljava/lang/String;

.field private vtRadioButtonComponentView:Lnet/veritran/component/view/VTRadioButtonComponentView;


# direct methods
.method public constructor <init>(Lnet/veritran/VTCommonActivity;)V
    .locals 1
    .param p1, "activity"    # Lnet/veritran/VTCommonActivity;

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Lnet/veritran/component/VTUIComponent;-><init>()V

    .line 26
    iput-object v0, p0, Lnet/veritran/component/VTRadioButtonComponent;->type:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lnet/veritran/component/VTRadioButtonComponent;->displayName:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lnet/veritran/component/VTRadioButtonComponent;->value:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lnet/veritran/component/VTRadioButtonComponent;->radioGroup:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lnet/veritran/component/VTRadioButtonComponent;->autoDump:Ljava/lang/Integer;

    .line 32
    iput-object v0, p0, Lnet/veritran/component/VTRadioButtonComponent;->targetvar:Ljava/lang/Integer;

    .line 34
    iput-object v0, p0, Lnet/veritran/component/VTRadioButtonComponent;->required:Ljava/lang/Boolean;

    .line 36
    iput-object v0, p0, Lnet/veritran/component/VTRadioButtonComponent;->onFocus:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lnet/veritran/component/VTRadioButtonComponent;->onBlur:Ljava/lang/String;

    .line 40
    invoke-virtual {p0, p1}, Lnet/veritran/component/VTRadioButtonComponent;->setActivity(Lnet/veritran/VTCommonActivity;)V

    .line 42
    new-instance v0, Lnet/veritran/component/view/VTRadioButtonComponentView;

    invoke-direct {v0, p0}, Lnet/veritran/component/view/VTRadioButtonComponentView;-><init>(Lnet/veritran/component/VTUIComponent;)V

    iput-object v0, p0, Lnet/veritran/component/VTRadioButtonComponent;->vtRadioButtonComponentView:Lnet/veritran/component/view/VTRadioButtonComponentView;

    .line 43
    return-void
.end method

.method private initRadioButton()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 105
    iget-object v7, p0, Lnet/veritran/component/VTRadioButtonComponent;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v8, "type"

    invoke-virtual {v7, v8}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lnet/veritran/component/VTRadioButtonComponent;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v8

    invoke-static {v7, v8}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lnet/veritran/component/VTRadioButtonComponent;->type:Ljava/lang/String;

    .line 106
    iget-object v7, p0, Lnet/veritran/component/VTRadioButtonComponent;->type:Ljava/lang/String;

    const-string v8, "CUSTOM"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 108
    iget-object v7, p0, Lnet/veritran/component/VTRadioButtonComponent;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v8, "background-image-on"

    invoke-virtual {v7, v8}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lnet/veritran/component/VTRadioButtonComponent;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v8

    invoke-static {v7, v8}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v2

    .line 109
    .local v2, "imageOnName":Ljava/lang/String;
    if-eqz v2, :cond_5

    const-string v7, ""

    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 110
    iget-object v7, p0, Lnet/veritran/component/VTRadioButtonComponent;->vtRadioButtonComponentView:Lnet/veritran/component/view/VTRadioButtonComponentView;

    invoke-virtual {v7, v2}, Lnet/veritran/component/view/VTRadioButtonComponentView;->setImageOnName(Ljava/lang/String;)V

    .line 115
    :goto_0
    iget-object v7, p0, Lnet/veritran/component/VTRadioButtonComponent;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v8, "background-image-off"

    invoke-virtual {v7, v8}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lnet/veritran/component/VTRadioButtonComponent;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v8

    invoke-static {v7, v8}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v1

    .line 116
    .local v1, "imageOffName":Ljava/lang/String;
    if-eqz v1, :cond_6

    const-string v7, ""

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 117
    iget-object v7, p0, Lnet/veritran/component/VTRadioButtonComponent;->vtRadioButtonComponentView:Lnet/veritran/component/view/VTRadioButtonComponentView;

    invoke-virtual {v7, v1}, Lnet/veritran/component/view/VTRadioButtonComponentView;->setImageOffName(Ljava/lang/String;)V

    .line 123
    .end local v1    # "imageOffName":Ljava/lang/String;
    .end local v2    # "imageOnName":Ljava/lang/String;
    :cond_0
    :goto_1
    iget-object v7, p0, Lnet/veritran/component/VTRadioButtonComponent;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v8, "autodump"

    invoke-virtual {v7, v8}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 124
    .local v4, "sAutoDump":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 125
    invoke-virtual {p0}, Lnet/veritran/component/VTRadioButtonComponent;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v7

    invoke-static {v4, v7}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v4

    .line 126
    const-string v7, ""

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 128
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, p0, Lnet/veritran/component/VTRadioButtonComponent;->autoDump:Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :cond_1
    :goto_2
    iget-object v7, p0, Lnet/veritran/component/VTRadioButtonComponent;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v8, "targetvar"

    invoke-virtual {v7, v8}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lnet/veritran/component/VTRadioButtonComponent;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v8

    invoke-static {v7, v8}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v6

    .line 136
    .local v6, "sTargetvar":Ljava/lang/String;
    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 138
    :try_start_1
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, p0, Lnet/veritran/component/VTRadioButtonComponent;->targetvar:Ljava/lang/Integer;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 144
    :cond_2
    :goto_3
    iget-object v7, p0, Lnet/veritran/component/VTRadioButtonComponent;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v8, "value"

    invoke-virtual {v7, v8}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lnet/veritran/component/VTRadioButtonComponent;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v8

    invoke-static {v7, v8}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lnet/veritran/component/VTRadioButtonComponent;->value:Ljava/lang/String;

    .line 145
    iget-object v7, p0, Lnet/veritran/component/VTRadioButtonComponent;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v8, "radiogroup"

    invoke-virtual {v7, v8}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lnet/veritran/component/VTRadioButtonComponent;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v8

    invoke-static {v7, v8}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lnet/veritran/component/VTRadioButtonComponent;->radioGroup:Ljava/lang/String;

    .line 146
    iget-object v7, p0, Lnet/veritran/component/VTRadioButtonComponent;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v8, "displayName"

    invoke-virtual {v7, v8}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lnet/veritran/component/VTRadioButtonComponent;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v8

    invoke-static {v7, v8}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lnet/veritran/component/VTRadioButtonComponent;->displayName:Ljava/lang/String;

    .line 148
    iget-object v7, p0, Lnet/veritran/component/VTRadioButtonComponent;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v8, "required"

    invoke-virtual {v7, v8}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lnet/veritran/component/VTRadioButtonComponent;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v8

    invoke-static {v7, v8}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v5

    .line 149
    .local v5, "sRequired":Ljava/lang/String;
    const-string v7, "TRUE"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "SI"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 150
    :cond_3
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iput-object v7, p0, Lnet/veritran/component/VTRadioButtonComponent;->required:Ljava/lang/Boolean;

    .line 155
    :goto_4
    iget-object v7, p0, Lnet/veritran/component/VTRadioButtonComponent;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v8, "onfocus"

    invoke-virtual {v7, v8}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lnet/veritran/component/VTRadioButtonComponent;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v8

    invoke-static {v7, v8}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lnet/veritran/component/VTRadioButtonComponent;->onFocus:Ljava/lang/String;

    .line 156
    iget-object v7, p0, Lnet/veritran/component/VTRadioButtonComponent;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v8, "onblur"

    invoke-virtual {v7, v8}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lnet/veritran/component/VTRadioButtonComponent;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v8

    invoke-static {v7, v8}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lnet/veritran/component/VTRadioButtonComponent;->onBlur:Ljava/lang/String;

    .line 158
    iget-object v7, p0, Lnet/veritran/component/VTRadioButtonComponent;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v8, "checked"

    invoke-virtual {v7, v8}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lnet/veritran/component/VTRadioButtonComponent;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v8

    invoke-static {v7, v8}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, "checked":Ljava/lang/String;
    if-eqz v0, :cond_8

    const-string v7, "SI"

    .line 160
    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "TRUE"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 161
    :cond_4
    iget-object v7, p0, Lnet/veritran/component/VTRadioButtonComponent;->vtRadioButtonComponentView:Lnet/veritran/component/view/VTRadioButtonComponentView;

    invoke-virtual {v7, v10}, Lnet/veritran/component/view/VTRadioButtonComponentView;->setChecked(Z)V

    .line 166
    :goto_5
    invoke-direct {p0}, Lnet/veritran/component/VTRadioButtonComponent;->updateAutoDump()V

    .line 168
    invoke-virtual {p0}, Lnet/veritran/component/VTRadioButtonComponent;->defineWidth()V

    .line 169
    invoke-virtual {p0}, Lnet/veritran/component/VTRadioButtonComponent;->defineHeight()V

    .line 170
    invoke-virtual {p0}, Lnet/veritran/component/VTRadioButtonComponent;->defineVisibility()V

    .line 171
    invoke-virtual {p0}, Lnet/veritran/component/VTRadioButtonComponent;->defineMargins()V

    .line 172
    return-void

    .line 112
    .end local v0    # "checked":Ljava/lang/String;
    .end local v4    # "sAutoDump":Ljava/lang/String;
    .end local v5    # "sRequired":Ljava/lang/String;
    .end local v6    # "sTargetvar":Ljava/lang/String;
    .restart local v2    # "imageOnName":Ljava/lang/String;
    :cond_5
    iget-object v7, p0, Lnet/veritran/component/VTRadioButtonComponent;->vtRadioButtonComponentView:Lnet/veritran/component/view/VTRadioButtonComponentView;

    const-string v8, "rb_on"

    invoke-virtual {v7, v8}, Lnet/veritran/component/view/VTRadioButtonComponentView;->setImageOnName(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 119
    .restart local v1    # "imageOffName":Ljava/lang/String;
    :cond_6
    iget-object v7, p0, Lnet/veritran/component/VTRadioButtonComponent;->vtRadioButtonComponentView:Lnet/veritran/component/view/VTRadioButtonComponentView;

    const-string v8, "rb_off"

    invoke-virtual {v7, v8}, Lnet/veritran/component/view/VTRadioButtonComponentView;->setImageOffName(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 129
    .end local v1    # "imageOffName":Ljava/lang/String;
    .end local v2    # "imageOnName":Ljava/lang/String;
    .restart local v4    # "sAutoDump":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 130
    .local v3, "nfe":Ljava/lang/NumberFormatException;
    const-string v7, "VTCheckboxComponent"

    const-string v8, "Catched exception empty (fortify)"

    invoke-static {v7, v8}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 139
    .end local v3    # "nfe":Ljava/lang/NumberFormatException;
    .restart local v6    # "sTargetvar":Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 140
    .restart local v3    # "nfe":Ljava/lang/NumberFormatException;
    const-string v7, "VTCheckboxComponent"

    const-string v8, "Catched exception empty (fortify)"

    invoke-static {v7, v8}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 152
    .end local v3    # "nfe":Ljava/lang/NumberFormatException;
    .restart local v5    # "sRequired":Ljava/lang/String;
    :cond_7
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iput-object v7, p0, Lnet/veritran/component/VTRadioButtonComponent;->required:Ljava/lang/Boolean;

    goto/16 :goto_4

    .line 164
    .restart local v0    # "checked":Ljava/lang/String;
    :cond_8
    iget-object v7, p0, Lnet/veritran/component/VTRadioButtonComponent;->vtRadioButtonComponentView:Lnet/veritran/component/view/VTRadioButtonComponentView;

    invoke-virtual {v7, v9}, Lnet/veritran/component/view/VTRadioButtonComponentView;->setChecked(Z)V

    goto :goto_5
.end method

.method private updateAutoDump()V
    .locals 3

    .prologue
    .line 196
    iget-object v0, p0, Lnet/veritran/component/VTRadioButtonComponent;->autoDump:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lnet/veritran/component/VTRadioButtonComponent;->vtRadioButtonComponentView:Lnet/veritran/component/view/VTRadioButtonComponentView;

    invoke-virtual {v0}, Lnet/veritran/component/view/VTRadioButtonComponentView;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v0

    iget-object v1, p0, Lnet/veritran/component/VTRadioButtonComponent;->autoDump:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lnet/veritran/component/VTRadioButtonComponent;->value:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    .line 201
    :cond_0
    return-void
.end method


# virtual methods
.method public executeEvent(Ljava/lang/String;)Z
    .locals 2
    .param p1, "event"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 73
    invoke-virtual {p0, p1}, Lnet/veritran/component/VTRadioButtonComponent;->checkEventType(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Lnet/veritran/component/VTRadioButtonComponent;->isRefreshEvent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 75
    invoke-direct {p0}, Lnet/veritran/component/VTRadioButtonComponent;->initRadioButton()V

    .line 76
    invoke-virtual {p0}, Lnet/veritran/component/VTRadioButtonComponent;->refreshMeasure()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    invoke-virtual {p0}, Lnet/veritran/component/VTRadioButtonComponent;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 78
    invoke-virtual {p0}, Lnet/veritran/component/VTRadioButtonComponent;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 88
    :cond_0
    :goto_0
    return v0

    .line 80
    :cond_1
    invoke-virtual {p0}, Lnet/veritran/component/VTRadioButtonComponent;->isVisibilityEvent()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 81
    invoke-virtual {p0}, Lnet/veritran/component/VTRadioButtonComponent;->updateVisibility()V

    goto :goto_0

    .line 82
    :cond_2
    const-string v1, "CHECK"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 83
    iget-object v1, p0, Lnet/veritran/component/VTRadioButtonComponent;->vtRadioButtonComponentView:Lnet/veritran/component/view/VTRadioButtonComponentView;

    invoke-virtual {v1, v0}, Lnet/veritran/component/view/VTRadioButtonComponentView;->setChecked(Z)V

    goto :goto_0

    .line 85
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lnet/veritran/component/VTRadioButtonComponent;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getRadioGroup()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lnet/veritran/component/VTRadioButtonComponent;->radioGroup:Ljava/lang/String;

    return-object v0
.end method

.method public getRequired()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lnet/veritran/component/VTRadioButtonComponent;->required:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getTargetvar()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lnet/veritran/component/VTRadioButtonComponent;->targetvar:Ljava/lang/Integer;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lnet/veritran/component/VTRadioButtonComponent;->value:Ljava/lang/String;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lnet/veritran/component/VTRadioButtonComponent;->vtRadioButtonComponentView:Lnet/veritran/component/view/VTRadioButtonComponentView;

    return-object v0
.end method

.method public init()V
    .locals 5

    .prologue
    .line 93
    invoke-super {p0}, Lnet/veritran/component/VTUIComponent;->init()V

    .line 95
    invoke-virtual {p0}, Lnet/veritran/component/VTRadioButtonComponent;->getActivity()Lnet/veritran/VTCommonActivity;

    move-result-object v0

    iget-object v1, v0, Lnet/veritran/VTCommonActivity;->inputs:Lnet/veritran/VTCommonActivity$InputsByArea;

    const-string v2, "all"

    new-instance v3, Lnet/veritran/VisualInputComponent;

    iget-object v0, p0, Lnet/veritran/component/VTRadioButtonComponent;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    check-cast v0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTRadioButton;

    iget-object v4, p0, Lnet/veritran/component/VTRadioButtonComponent;->vtRadioButtonComponentView:Lnet/veritran/component/view/VTRadioButtonComponentView;

    invoke-direct {v3, v0, v4}, Lnet/veritran/VisualInputComponent;-><init>(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTRadioButton;Landroid/view/View;)V

    invoke-virtual {v1, v2, v3}, Lnet/veritran/VTCommonActivity$InputsByArea;->put(Ljava/lang/String;Lnet/veritran/VisualInputComponent;)V

    .line 97
    iget-object v0, p0, Lnet/veritran/component/VTRadioButtonComponent;->vtRadioButtonComponentView:Lnet/veritran/component/view/VTRadioButtonComponentView;

    invoke-virtual {v0, p0}, Lnet/veritran/component/view/VTRadioButtonComponentView;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 98
    iget-object v0, p0, Lnet/veritran/component/VTRadioButtonComponent;->vtRadioButtonComponentView:Lnet/veritran/component/view/VTRadioButtonComponentView;

    invoke-virtual {v0, p0}, Lnet/veritran/component/view/VTRadioButtonComponentView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 100
    invoke-direct {p0}, Lnet/veritran/component/VTRadioButtonComponent;->initRadioButton()V

    .line 101
    return-void
.end method

.method public keepStatusesToBundle()Z
    .locals 1

    .prologue
    .line 181
    const/4 v0, 0x1

    return v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 207
    invoke-direct {p0}, Lnet/veritran/component/VTRadioButtonComponent;->updateAutoDump()V

    .line 209
    if-eqz p2, :cond_1

    .line 210
    invoke-virtual {p0}, Lnet/veritran/component/VTRadioButtonComponent;->getActivity()Lnet/veritran/VTCommonActivity;

    move-result-object v3

    iget-object v3, v3, Lnet/veritran/VTCommonActivity;->inputs:Lnet/veritran/VTCommonActivity$InputsByArea;

    const-string v4, "all"

    invoke-virtual {v3, v4}, Lnet/veritran/VTCommonActivity$InputsByArea;->getInputsByArea(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 211
    .local v2, "visualInputcomponents":Ljava/util/List;, "Ljava/util/List<Lnet/veritran/VisualInputComponent;>;"
    if-eqz v2, :cond_1

    iget-object v3, p0, Lnet/veritran/component/VTRadioButtonComponent;->radioGroup:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lnet/veritran/component/VTRadioButtonComponent;->radioGroup:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 212
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/veritran/VisualInputComponent;

    .line 213
    .local v1, "vic":Lnet/veritran/VisualInputComponent;
    invoke-virtual {v1}, Lnet/veritran/VisualInputComponent;->getType()I

    move-result v3

    const/4 v5, 0x6

    if-ne v3, v5, :cond_0

    .line 215
    invoke-virtual {v1}, Lnet/veritran/VisualInputComponent;->getView()Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lnet/veritran/utils/VTAndroidUtils;->getUIComponentFromView(Landroid/view/View;)Lnet/veritran/component/VTUIComponent;

    move-result-object v0

    check-cast v0, Lnet/veritran/component/VTRadioButtonComponent;

    .line 217
    .local v0, "radioButton":Lnet/veritran/component/VTRadioButtonComponent;
    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    invoke-virtual {v0}, Lnet/veritran/component/VTRadioButtonComponent;->getView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Lnet/veritran/component/view/VTRadioButtonComponentView;

    invoke-virtual {v3}, Lnet/veritran/component/view/VTRadioButtonComponentView;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 218
    iget-object v3, v0, Lnet/veritran/component/VTRadioButtonComponent;->radioGroup:Ljava/lang/String;

    iget-object v5, p0, Lnet/veritran/component/VTRadioButtonComponent;->radioGroup:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 219
    invoke-virtual {v0}, Lnet/veritran/component/VTRadioButtonComponent;->getView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Lnet/veritran/component/view/VTRadioButtonComponentView;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lnet/veritran/component/view/VTRadioButtonComponentView;->setChecked(Z)V

    goto :goto_0

    .line 226
    .end local v0    # "radioButton":Lnet/veritran/component/VTRadioButtonComponent;
    .end local v1    # "vic":Lnet/veritran/VisualInputComponent;
    .end local v2    # "visualInputcomponents":Ljava/util/List;, "Ljava/util/List<Lnet/veritran/VisualInputComponent;>;"
    :cond_1
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 230
    iget-object v0, p0, Lnet/veritran/component/VTRadioButtonComponent;->onFocus:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/veritran/component/VTRadioButtonComponent;->onFocus:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    .line 231
    invoke-virtual {p0}, Lnet/veritran/component/VTRadioButtonComponent;->getActivity()Lnet/veritran/VTCommonActivity;

    move-result-object v0

    iget-object v1, p0, Lnet/veritran/component/VTRadioButtonComponent;->onFocus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnet/veritran/VTCommonActivity;->processAction(Ljava/lang/String;)V

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 232
    :cond_1
    iget-object v0, p0, Lnet/veritran/component/VTRadioButtonComponent;->onBlur:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/veritran/component/VTRadioButtonComponent;->onBlur:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    .line 233
    invoke-virtual {p0}, Lnet/veritran/component/VTRadioButtonComponent;->getActivity()Lnet/veritran/VTCommonActivity;

    move-result-object v0

    iget-object v1, p0, Lnet/veritran/component/VTRadioButtonComponent;->onBlur:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnet/veritran/VTCommonActivity;->processAction(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public restoreStatusFromBundle(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 191
    iget-object v0, p0, Lnet/veritran/component/VTRadioButtonComponent;->vtRadioButtonComponentView:Lnet/veritran/component/view/VTRadioButtonComponentView;

    const-string v1, "checked"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lnet/veritran/component/view/VTRadioButtonComponentView;->setChecked(Z)V

    .line 192
    invoke-direct {p0}, Lnet/veritran/component/VTRadioButtonComponent;->updateAutoDump()V

    .line 193
    return-void
.end method

.method public saveStatusToBundle(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 186
    const-string v0, "checked"

    iget-object v1, p0, Lnet/veritran/component/VTRadioButtonComponent;->vtRadioButtonComponentView:Lnet/veritran/component/view/VTRadioButtonComponentView;

    invoke-virtual {v1}, Lnet/veritran/component/view/VTRadioButtonComponentView;->isChecked()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 187
    return-void
.end method

.method public supportEvents()Z
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x1

    return v0
.end method
