.class public Lnet/veritran/component/VTInputText;
.super Lnet/veritran/component/VTUIComponent;
.source "VTInputText.java"

# interfaces
.implements Landroid/text/TextWatcher;


# static fields
.field private static final TAG:Ljava/lang/String; = "VTInputTextComponent"


# instance fields
.field private autoDump:Ljava/lang/Integer;

.field filter:Landroid/text/InputFilter;

.field filterFree:Landroid/text/InputFilter;

.field filterText:Landroid/text/InputFilter;

.field private fontFamily:Ljava/lang/String;

.field private fontSize:Ljava/lang/String;

.field private fontStyle:Ljava/lang/String;

.field private fontWeight:Ljava/lang/String;

.field h:Landroid/os/Handler;

.field private haveHint:Z

.field private hintFontFamily:Ljava/lang/String;

.field private hintFontSize:Ljava/lang/String;

.field private hintFontStyle:Ljava/lang/String;

.field private hintFontWeight:Ljava/lang/String;

.field private isCurrencyView:Z

.field private isInputPostInstEdited:Z

.field private isInstantiationTime:Z

.field private isPinType:Z

.field private isRequired:Z

.field private isRetrievingFromBundle:Z

.field private lastEnteredText:Ljava/lang/String;

.field private lengthBeforeChange:I

.field private maskHandler:Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;

.field private maxLength:I

.field private minLength:I

.field private onBlur:Ljava/lang/String;

.field private onChange:Ljava/lang/String;

.field private onClear:Ljava/lang/String;

.field private onCompleteInvalid:Ljava/lang/String;

.field private onCompleteValid:Ljava/lang/String;

.field private onFocus:Ljava/lang/String;

.field private onInvalid:Ljava/lang/String;

.field private onValid:Ljava/lang/String;

.field r:Ljava/lang/Runnable;

.field private themeStyle:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field validChars:Ljava/lang/String;

.field private vtInputTextView:Lnet/veritran/component/view/VTTextInterface;


# direct methods
.method public constructor <init>(Lnet/veritran/VTCommonActivity;)V
    .locals 3
    .param p1, "activity"    # Lnet/veritran/VTCommonActivity;

    .prologue
    const/4 v0, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 128
    invoke-direct {p0}, Lnet/veritran/component/VTUIComponent;-><init>()V

    .line 54
    iput-boolean v1, p0, Lnet/veritran/component/VTInputText;->isCurrencyView:Z

    .line 55
    iput-boolean v1, p0, Lnet/veritran/component/VTInputText;->isPinType:Z

    .line 65
    iput-object v2, p0, Lnet/veritran/component/VTInputText;->validChars:Ljava/lang/String;

    .line 67
    iput-object v2, p0, Lnet/veritran/component/VTInputText;->autoDump:Ljava/lang/Integer;

    .line 69
    iput v0, p0, Lnet/veritran/component/VTInputText;->minLength:I

    .line 70
    iput v0, p0, Lnet/veritran/component/VTInputText;->maxLength:I

    .line 86
    iput-boolean v1, p0, Lnet/veritran/component/VTInputText;->haveHint:Z

    .line 88
    iput-boolean v1, p0, Lnet/veritran/component/VTInputText;->isRequired:Z

    .line 90
    iput-boolean v1, p0, Lnet/veritran/component/VTInputText;->isRetrievingFromBundle:Z

    .line 92
    iput v1, p0, Lnet/veritran/component/VTInputText;->lengthBeforeChange:I

    .line 94
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lnet/veritran/component/VTInputText;->h:Landroid/os/Handler;

    .line 96
    iput-object v2, p0, Lnet/veritran/component/VTInputText;->lastEnteredText:Ljava/lang/String;

    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/veritran/component/VTInputText;->isInstantiationTime:Z

    .line 98
    iput-boolean v1, p0, Lnet/veritran/component/VTInputText;->isInputPostInstEdited:Z

    .line 1003
    new-instance v0, Lnet/veritran/component/VTInputText$6;

    invoke-direct {v0, p0}, Lnet/veritran/component/VTInputText$6;-><init>(Lnet/veritran/component/VTInputText;)V

    iput-object v0, p0, Lnet/veritran/component/VTInputText;->r:Ljava/lang/Runnable;

    .line 129
    invoke-virtual {p0, p1}, Lnet/veritran/component/VTInputText;->setActivity(Lnet/veritran/VTCommonActivity;)V

    .line 130
    return-void
.end method

.method static synthetic access$000(Lnet/veritran/component/VTInputText;)Lnet/veritran/component/view/VTTextInterface;
    .locals 1
    .param p0, "x0"    # Lnet/veritran/component/VTInputText;

    .prologue
    .line 49
    iget-object v0, p0, Lnet/veritran/component/VTInputText;->vtInputTextView:Lnet/veritran/component/view/VTTextInterface;

    return-object v0
.end method

.method static synthetic access$100(Lnet/veritran/component/VTInputText;)Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;
    .locals 1
    .param p0, "x0"    # Lnet/veritran/component/VTInputText;

    .prologue
    .line 49
    iget-object v0, p0, Lnet/veritran/component/VTInputText;->maskHandler:Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;

    return-object v0
.end method

.method static synthetic access$1000(Lnet/veritran/component/VTInputText;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lnet/veritran/component/VTInputText;

    .prologue
    .line 49
    iget-object v0, p0, Lnet/veritran/component/VTInputText;->autoDump:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$1100(Lnet/veritran/component/VTInputText;)Z
    .locals 1
    .param p0, "x0"    # Lnet/veritran/component/VTInputText;

    .prologue
    .line 49
    iget-boolean v0, p0, Lnet/veritran/component/VTInputText;->isInstantiationTime:Z

    return v0
.end method

.method static synthetic access$1102(Lnet/veritran/component/VTInputText;Z)Z
    .locals 0
    .param p0, "x0"    # Lnet/veritran/component/VTInputText;
    .param p1, "x1"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lnet/veritran/component/VTInputText;->isInstantiationTime:Z

    return p1
.end method

.method static synthetic access$1200(Lnet/veritran/component/VTInputText;)Z
    .locals 1
    .param p0, "x0"    # Lnet/veritran/component/VTInputText;

    .prologue
    .line 49
    iget-boolean v0, p0, Lnet/veritran/component/VTInputText;->isInputPostInstEdited:Z

    return v0
.end method

.method static synthetic access$1300(Lnet/veritran/component/VTInputText;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lnet/veritran/component/VTInputText;

    .prologue
    .line 49
    iget-object v0, p0, Lnet/veritran/component/VTInputText;->onChange:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lnet/veritran/component/VTInputText;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lnet/veritran/component/VTInputText;

    .prologue
    .line 49
    iget-object v0, p0, Lnet/veritran/component/VTInputText;->lastEnteredText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1402(Lnet/veritran/component/VTInputText;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lnet/veritran/component/VTInputText;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lnet/veritran/component/VTInputText;->lastEnteredText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1500(Lnet/veritran/component/VTInputText;)Z
    .locals 1
    .param p0, "x0"    # Lnet/veritran/component/VTInputText;

    .prologue
    .line 49
    invoke-direct {p0}, Lnet/veritran/component/VTInputText;->validateRegex()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lnet/veritran/component/VTInputText;)I
    .locals 1
    .param p0, "x0"    # Lnet/veritran/component/VTInputText;

    .prologue
    .line 49
    iget v0, p0, Lnet/veritran/component/VTInputText;->minLength:I

    return v0
.end method

.method static synthetic access$1700(Lnet/veritran/component/VTInputText;)I
    .locals 1
    .param p0, "x0"    # Lnet/veritran/component/VTInputText;

    .prologue
    .line 49
    iget v0, p0, Lnet/veritran/component/VTInputText;->maxLength:I

    return v0
.end method

.method static synthetic access$1800(Lnet/veritran/component/VTInputText;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lnet/veritran/component/VTInputText;

    .prologue
    .line 49
    iget-object v0, p0, Lnet/veritran/component/VTInputText;->onCompleteValid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lnet/veritran/component/VTInputText;)Z
    .locals 1
    .param p0, "x0"    # Lnet/veritran/component/VTInputText;

    .prologue
    .line 49
    iget-boolean v0, p0, Lnet/veritran/component/VTInputText;->isRequired:Z

    return v0
.end method

.method static synthetic access$200(Lnet/veritran/component/VTInputText;)Z
    .locals 1
    .param p0, "x0"    # Lnet/veritran/component/VTInputText;

    .prologue
    .line 49
    iget-boolean v0, p0, Lnet/veritran/component/VTInputText;->haveHint:Z

    return v0
.end method

.method static synthetic access$2000(Lnet/veritran/component/VTInputText;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lnet/veritran/component/VTInputText;

    .prologue
    .line 49
    iget-object v0, p0, Lnet/veritran/component/VTInputText;->onValid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2100(Lnet/veritran/component/VTInputText;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lnet/veritran/component/VTInputText;

    .prologue
    .line 49
    iget-object v0, p0, Lnet/veritran/component/VTInputText;->onInvalid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2200(Lnet/veritran/component/VTInputText;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lnet/veritran/component/VTInputText;

    .prologue
    .line 49
    iget-object v0, p0, Lnet/veritran/component/VTInputText;->onCompleteInvalid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2300(Lnet/veritran/component/VTInputText;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lnet/veritran/component/VTInputText;

    .prologue
    .line 49
    iget-object v0, p0, Lnet/veritran/component/VTInputText;->onClear:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2400(Lnet/veritran/component/VTInputText;)Z
    .locals 1
    .param p0, "x0"    # Lnet/veritran/component/VTInputText;

    .prologue
    .line 49
    iget-boolean v0, p0, Lnet/veritran/component/VTInputText;->isRetrievingFromBundle:Z

    return v0
.end method

.method static synthetic access$300(Lnet/veritran/component/VTInputText;)Z
    .locals 1
    .param p0, "x0"    # Lnet/veritran/component/VTInputText;

    .prologue
    .line 49
    iget-boolean v0, p0, Lnet/veritran/component/VTInputText;->isPinType:Z

    return v0
.end method

.method static synthetic access$400(Lnet/veritran/component/VTInputText;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lnet/veritran/component/VTInputText;

    .prologue
    .line 49
    iget-object v0, p0, Lnet/veritran/component/VTInputText;->fontSize:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lnet/veritran/component/VTInputText;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lnet/veritran/component/VTInputText;

    .prologue
    .line 49
    iget-object v0, p0, Lnet/veritran/component/VTInputText;->fontFamily:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lnet/veritran/component/VTInputText;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lnet/veritran/component/VTInputText;

    .prologue
    .line 49
    iget-object v0, p0, Lnet/veritran/component/VTInputText;->fontStyle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lnet/veritran/component/VTInputText;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lnet/veritran/component/VTInputText;

    .prologue
    .line 49
    iget-object v0, p0, Lnet/veritran/component/VTInputText;->fontWeight:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lnet/veritran/component/VTInputText;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lnet/veritran/component/VTInputText;

    .prologue
    .line 49
    iget-object v0, p0, Lnet/veritran/component/VTInputText;->themeStyle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Lnet/veritran/component/VTInputText;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lnet/veritran/component/VTInputText;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lnet/veritran/component/VTInputText;->themeStyle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lnet/veritran/component/VTInputText;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lnet/veritran/component/VTInputText;

    .prologue
    .line 49
    iget-object v0, p0, Lnet/veritran/component/VTInputText;->type:Ljava/lang/String;

    return-object v0
.end method

.method private defineBorderColors()V
    .locals 8

    .prologue
    .line 213
    :try_start_0
    iget-object v6, p0, Lnet/veritran/component/VTInputText;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v7, "BorderColor"

    invoke-virtual {v6, v7}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 214
    .local v3, "sBorderColor":Ljava/lang/String;
    invoke-virtual {p0}, Lnet/veritran/component/VTInputText;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v6

    invoke-static {v3, v6}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v3

    .line 215
    invoke-static {v3}, Lnet/veritran/VTAbstractActivity;->resolveColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 217
    .local v1, "iBorderColor":Ljava/lang/Integer;
    iget-object v6, p0, Lnet/veritran/component/VTInputText;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v7, "BorderColorFocus"

    invoke-virtual {v6, v7}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 218
    .local v4, "sBorderColorFocus":Ljava/lang/String;
    invoke-virtual {p0}, Lnet/veritran/component/VTInputText;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v6

    invoke-static {v4, v6}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v4

    .line 219
    invoke-static {v4}, Lnet/veritran/VTAbstractActivity;->resolveColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 221
    .local v2, "iBorderColorFocus":Ljava/lang/Integer;
    iget-object v6, p0, Lnet/veritran/component/VTInputText;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v7, "Style"

    invoke-virtual {v6, v7}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 222
    .local v5, "sBorderStyle":Ljava/lang/String;
    invoke-virtual {p0}, Lnet/veritran/component/VTInputText;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v6

    invoke-static {v5, v6}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v5

    .line 224
    iget-object v6, p0, Lnet/veritran/component/VTInputText;->vtInputTextView:Lnet/veritran/component/view/VTTextInterface;

    invoke-interface {v6, v1, v2, v5}, Lnet/veritran/component/view/VTTextInterface;->setComponentBorderColors(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    .end local v1    # "iBorderColor":Ljava/lang/Integer;
    .end local v2    # "iBorderColorFocus":Ljava/lang/Integer;
    .end local v3    # "sBorderColor":Ljava/lang/String;
    .end local v4    # "sBorderColorFocus":Ljava/lang/String;
    .end local v5    # "sBorderStyle":Ljava/lang/String;
    :goto_0
    return-void

    .line 226
    :catch_0
    move-exception v0

    .line 227
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "VTInputTextComponent"

    const-string v7, "Catched exception empty (fortify)"

    invoke-static {v6, v7}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private expandCharset(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "charset"    # Ljava/lang/String;

    .prologue
    .line 946
    if-nez p1, :cond_1

    .line 947
    const-string p1, ""

    .line 965
    :cond_0
    :goto_0
    return-object p1

    .line 948
    :cond_1
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 950
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 952
    const-string v0, "["

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_2

    .line 953
    const/4 v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 955
    :cond_2
    const-string v0, "a-z"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 956
    const-string v0, "a-z"

    const-string v1, "abcdefghijklmnopqrstuvwxyz"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 958
    :cond_3
    const-string v0, "A-Z"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 959
    const-string v0, "A-Z"

    const-string v1, "ABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 961
    :cond_4
    const-string v0, "0-9"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 962
    const-string v0, "0-9"

    const-string v1, "0123456789"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private initInput()V
    .locals 31

    .prologue
    .line 296
    const/16 v26, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/veritran/component/VTInputText;->validChars:Ljava/lang/String;

    .line 297
    const/16 v26, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/veritran/component/VTInputText;->autoDump:Ljava/lang/Integer;

    .line 300
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lnet/veritran/component/VTInputText;->minLength:I

    .line 301
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lnet/veritran/component/VTInputText;->maxLength:I

    .line 303
    const/16 v26, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/veritran/component/VTInputText;->onClear:Ljava/lang/String;

    .line 304
    const/16 v26, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/veritran/component/VTInputText;->onCompleteInvalid:Ljava/lang/String;

    .line 305
    const/16 v26, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/veritran/component/VTInputText;->onCompleteValid:Ljava/lang/String;

    .line 306
    const/16 v26, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/veritran/component/VTInputText;->onInvalid:Ljava/lang/String;

    .line 307
    const/16 v26, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/veritran/component/VTInputText;->onValid:Ljava/lang/String;

    .line 308
    const/16 v26, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/veritran/component/VTInputText;->onFocus:Ljava/lang/String;

    .line 309
    const/16 v26, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/veritran/component/VTInputText;->onBlur:Ljava/lang/String;

    .line 310
    const/16 v26, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/veritran/component/VTInputText;->onChange:Ljava/lang/String;

    .line 312
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTInputText;->defineBackgroundColor()V

    .line 313
    invoke-direct/range {p0 .. p0}, Lnet/veritran/component/VTInputText;->defineBorderColors()V

    .line 314
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTInputText;->defineBackgroundImage()V

    .line 315
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTInputText;->defineVisibility()V

    .line 316
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTInputText;->defineTextAlign()V

    .line 318
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTInputText;->getActivity()Lnet/veritran/VTCommonActivity;

    move-result-object v26

    move-object/from16 v0, v26

    iget-object v0, v0, Lnet/veritran/VTCommonActivity;->inputs:Lnet/veritran/VTCommonActivity$InputsByArea;

    move-object/from16 v27, v0

    const-string v28, "all"

    new-instance v29, Lnet/veritran/VisualInputComponent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTInputText;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-object/from16 v26, v0

    check-cast v26, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTInput;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTInputText;->vtInputTextView:Lnet/veritran/component/view/VTTextInterface;

    move-object/from16 v30, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v26

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lnet/veritran/VisualInputComponent;-><init>(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTInput;Lnet/veritran/component/view/VTTextInterface;)V

    invoke-virtual/range {v27 .. v29}, Lnet/veritran/VTCommonActivity$InputsByArea;->put(Ljava/lang/String;Lnet/veritran/VisualInputComponent;)V

    .line 320
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTInputText;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-object/from16 v26, v0

    const-string v27, "autodump"

    invoke-virtual/range {v26 .. v27}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 321
    .local v19, "sAutoDump":Ljava/lang/String;
    if-eqz v19, :cond_0

    .line 322
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTInputText;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v26

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v19

    .line 323
    const-string v26, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_0

    .line 325
    :try_start_0
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/veritran/component/VTInputText;->autoDump:Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTInputText;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-object/from16 v26, v0

    const-string v27, "required"

    invoke-virtual/range {v26 .. v27}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 333
    .local v24, "strRequired":Ljava/lang/String;
    if-nez v24, :cond_1

    .line 334
    const-string v24, "false"

    .line 336
    :cond_1
    const/16 v26, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v24

    .line 337
    const-string v26, "false"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_2

    .line 338
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lnet/veritran/component/VTInputText;->isRequired:Z

    .line 341
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTInputText;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-object/from16 v26, v0

    const-string v27, "charset"

    invoke-virtual/range {v26 .. v27}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 342
    .local v5, "charset":Ljava/lang/String;
    if-eqz v5, :cond_3

    const-string v26, ""

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_4

    .line 344
    :cond_3
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lnet/veritran/VTUserApplicationSmart;->getDefaultCharset()Ljava/lang/String;

    move-result-object v5

    .line 347
    :cond_4
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lnet/veritran/component/VTInputText;->haveHint:Z

    .line 348
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTInputText;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-object/from16 v26, v0

    const-string v27, "hint"

    invoke-virtual/range {v26 .. v27}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTInputText;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v9

    .line 349
    .local v9, "hint":Ljava/lang/String;
    if-eqz v9, :cond_5

    const-string v26, ""

    move-object/from16 v0, v26

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_5

    .line 351
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTInputText;->vtInputTextView:Lnet/veritran/component/view/VTTextInterface;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-interface {v0, v9}, Lnet/veritran/component/view/VTTextInterface;->setHint(Ljava/lang/CharSequence;)V

    .line 352
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lnet/veritran/component/VTInputText;->haveHint:Z

    .line 353
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTInputText;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-object/from16 v26, v0

    const-string v27, "hintcolor"

    invoke-virtual/range {v26 .. v27}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTInputText;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v10

    .line 354
    .local v10, "hintColor":Ljava/lang/String;
    invoke-static {v10}, Lnet/veritran/VTAbstractActivity;->resolveColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    .line 355
    .local v12, "iHintColor":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTInputText;->vtInputTextView:Lnet/veritran/component/view/VTTextInterface;

    move-object/from16 v26, v0

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v27

    invoke-interface/range {v26 .. v27}, Lnet/veritran/component/view/VTTextInterface;->setHintTextColor(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 361
    .end local v10    # "hintColor":Ljava/lang/String;
    .end local v12    # "iHintColor":Ljava/lang/Integer;
    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTInputText;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-object/from16 v26, v0

    const-string v27, "inputMask"

    invoke-virtual/range {v26 .. v27}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 362
    .local v13, "inputMask":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTInputText;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-object/from16 v26, v0

    const-string v27, "type"

    invoke-virtual/range {v26 .. v27}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/veritran/component/VTInputText;->type:Ljava/lang/String;

    .line 364
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/veritran/component/VTInputText;->isPinType:Z

    move/from16 v26, v0

    if-eqz v26, :cond_6

    .line 365
    const-string v26, "text"

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/veritran/component/VTInputText;->type:Ljava/lang/String;

    .line 368
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTInputText;->type:Ljava/lang/String;

    move-object/from16 v26, v0

    if-nez v26, :cond_8

    .line 370
    if-nez v13, :cond_7

    .line 371
    const-string v13, "*{999}"

    .line 374
    :cond_7
    invoke-static {v13}, Lnet/veritran/vtuserapplication/ui/maskhandler/MaskBuilder;->getMaskType(Ljava/lang/String;)I

    move-result v14

    .line 376
    .local v14, "inputMaskType":I
    packed-switch v14, :pswitch_data_0

    .line 392
    .end local v14    # "inputMaskType":I
    :cond_8
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/veritran/component/VTInputText;->isCurrencyView:Z

    move/from16 v26, v0

    if-eqz v26, :cond_11

    .line 393
    const/16 v26, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/veritran/component/VTInputText;->maskHandler:Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;

    .line 407
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTInputText;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-object/from16 v26, v0

    const-string v27, "displayname"

    invoke-virtual/range {v26 .. v27}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTInputText;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v6

    .line 409
    .local v6, "displayName":Ljava/lang/String;
    if-nez v5, :cond_9

    const-string v5, ""

    .line 410
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTInputText;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-static {v5, v0}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v5

    .line 411
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lnet/veritran/component/VTInputText;->expandCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/veritran/component/VTInputText;->validChars:Ljava/lang/String;

    .line 413
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/veritran/component/VTInputText;->isPinType:Z

    move/from16 v26, v0

    if-nez v26, :cond_a

    .line 415
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTInputText;->vtInputTextView:Lnet/veritran/component/view/VTTextInterface;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-interface/range {v26 .. v27}, Lnet/veritran/component/view/VTTextInterface;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 416
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTInputText;->vtInputTextView:Lnet/veritran/component/view/VTTextInterface;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-interface/range {v26 .. v27}, Lnet/veritran/component/view/VTTextInterface;->setClickable(Z)V

    .line 419
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTInputText;->type:Ljava/lang/String;

    move-object/from16 v26, v0

    if-eqz v26, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTInputText;->type:Ljava/lang/String;

    move-object/from16 v26, v0

    const-string v27, "date"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTInputText;->type:Ljava/lang/String;

    move-object/from16 v26, v0

    const-string v27, "calendar"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_15

    .line 421
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTInputText;->vtInputTextView:Lnet/veritran/component/view/VTTextInterface;

    move-object/from16 v26, v0

    new-instance v27, Lnet/veritran/component/VTInputText$1;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v6}, Lnet/veritran/component/VTInputText$1;-><init>(Lnet/veritran/component/VTInputText;Ljava/lang/String;)V

    invoke-interface/range {v26 .. v27}, Lnet/veritran/component/view/VTTextInterface;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 548
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTInputText;->vtInputTextView:Lnet/veritran/component/view/VTTextInterface;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-interface/range {v26 .. v27}, Lnet/veritran/component/view/VTTextInterface;->setFocusable(Z)V

    .line 803
    :cond_c
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/veritran/component/VTInputText;->isPinType:Z

    move/from16 v26, v0

    if-nez v26, :cond_d

    .line 804
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTInputText;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-object/from16 v26, v0

    const-string v27, "color"

    invoke-virtual/range {v26 .. v27}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 805
    .local v20, "sColor":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTInputText;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v26

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v20

    .line 806
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTInputText;->vtInputTextView:Lnet/veritran/component/view/VTTextInterface;

    move-object/from16 v26, v0

    check-cast v26, Lnet/veritran/component/view/VTInputTextView;

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lnet/veritran/utils/VTFontHelper;->setTextColor(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 809
    .end local v20    # "sColor":Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTInputText;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-object/from16 v26, v0

    const-string v27, "fontsize"

    invoke-virtual/range {v26 .. v27}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTInputText;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/veritran/component/VTInputText;->fontSize:Ljava/lang/String;

    .line 810
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTInputText;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-object/from16 v26, v0

    const-string v27, "fontfamily"

    invoke-virtual/range {v26 .. v27}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTInputText;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/veritran/component/VTInputText;->fontFamily:Ljava/lang/String;

    .line 811
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTInputText;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-object/from16 v26, v0

    const-string v27, "fontstyle"

    invoke-virtual/range {v26 .. v27}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTInputText;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/veritran/component/VTInputText;->fontStyle:Ljava/lang/String;

    .line 812
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTInputText;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-object/from16 v26, v0

    const-string v27, "fontweight"

    invoke-virtual/range {v26 .. v27}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTInputText;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/veritran/component/VTInputText;->fontWeight:Ljava/lang/String;

    .line 813
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTInputText;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-object/from16 v26, v0

    const-string v27, "hintfontsize"

    invoke-virtual/range {v26 .. v27}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTInputText;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/veritran/component/VTInputText;->hintFontSize:Ljava/lang/String;

    .line 814
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTInputText;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-object/from16 v26, v0

    const-string v27, "hintfontfamily"

    invoke-virtual/range {v26 .. v27}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTInputText;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/veritran/component/VTInputText;->hintFontFamily:Ljava/lang/String;

    .line 815
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTInputText;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-object/from16 v26, v0

    const-string v27, "hintfontstyle"

    invoke-virtual/range {v26 .. v27}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTInputText;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/veritran/component/VTInputText;->hintFontStyle:Ljava/lang/String;

    .line 816
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTInputText;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-object/from16 v26, v0

    const-string v27, "hintfontweight"

    invoke-virtual/range {v26 .. v27}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTInputText;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/veritran/component/VTInputText;->hintFontWeight:Ljava/lang/String;

    .line 818
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTInputText;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-object/from16 v26, v0

    const-string v27, "width"

    invoke-virtual/range {v26 .. v27}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 819
    .local v25, "width":Ljava/lang/String;
    const-string v26, "VTInputTextComponent"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "width "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 821
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTInputText;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-object/from16 v26, v0

    const-string v27, "value"

    invoke-virtual/range {v26 .. v27}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 822
    .local v21, "sDefaultText":Ljava/lang/String;
    if-eqz v21, :cond_25

    .line 823
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTInputText;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v26

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v21

    .line 824
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTInputText;->vtInputTextView:Lnet/veritran/component/view/VTTextInterface;

    move-object/from16 v26, v0

    const-string v27, ""

    invoke-interface/range {v26 .. v27}, Lnet/veritran/component/view/VTTextInterface;->setText(Ljava/lang/CharSequence;)V

    .line 825
    const/4 v4, 0x0

    .local v4, "c":I
    :goto_5
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v26

    move/from16 v0, v26

    if-ge v4, v0, :cond_26

    .line 826
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTInputText;->validChars:Ljava/lang/String;

    move-object/from16 v26, v0

    const-string v27, ""

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTInputText;->validChars:Ljava/lang/String;

    move-object/from16 v26, v0

    add-int/lit8 v27, v4, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v27

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v26

    if-eqz v26, :cond_10

    .line 827
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTInputText;->type:Ljava/lang/String;

    move-object/from16 v26, v0

    if-eqz v26, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTInputText;->type:Ljava/lang/String;

    move-object/from16 v26, v0

    const-string v27, "date"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTInputText;->type:Ljava/lang/String;

    move-object/from16 v26, v0

    const-string v27, "calendar"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_24

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTInputText;->maskHandler:Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;

    move-object/from16 v26, v0

    if-eqz v26, :cond_24

    .line 828
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTInputText;->maskHandler:Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;

    move-object/from16 v26, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v27

    invoke-virtual/range {v26 .. v27}, Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;->addChar(I)Z

    .line 829
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTInputText;->vtInputTextView:Lnet/veritran/component/view/VTTextInterface;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTInputText;->maskHandler:Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;->getVisibleText()Ljava/lang/String;

    move-result-object v27

    invoke-interface/range {v26 .. v27}, Lnet/veritran/component/view/VTTextInterface;->setText(Ljava/lang/CharSequence;)V

    .line 825
    :cond_10
    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 326
    .end local v4    # "c":I
    .end local v5    # "charset":Ljava/lang/String;
    .end local v6    # "displayName":Ljava/lang/String;
    .end local v9    # "hint":Ljava/lang/String;
    .end local v13    # "inputMask":Ljava/lang/String;
    .end local v21    # "sDefaultText":Ljava/lang/String;
    .end local v24    # "strRequired":Ljava/lang/String;
    .end local v25    # "width":Ljava/lang/String;
    :catch_0
    move-exception v17

    .line 327
    .local v17, "nfe":Ljava/lang/NumberFormatException;
    const-string v26, "VTInputTextComponent"

    const-string v27, "Catched exception empty (fortify)"

    invoke-static/range {v26 .. v27}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 356
    .end local v17    # "nfe":Ljava/lang/NumberFormatException;
    .restart local v5    # "charset":Ljava/lang/String;
    .restart local v9    # "hint":Ljava/lang/String;
    .restart local v24    # "strRequired":Ljava/lang/String;
    :catch_1
    move-exception v7

    .line 357
    .local v7, "e":Ljava/lang/Exception;
    const-string v26, "VTInputTextComponent"

    const-string v27, "Catched exception empty (fortify)"

    invoke-static/range {v26 .. v27}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 381
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v13    # "inputMask":Ljava/lang/String;
    .restart local v14    # "inputMaskType":I
    :pswitch_0
    const-string v26, "text"

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/veritran/component/VTInputText;->type:Ljava/lang/String;

    .line 382
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lnet/veritran/component/VTInputText;->setMinMaxLength(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 386
    :pswitch_1
    const-string v26, "date"

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/veritran/component/VTInputText;->type:Ljava/lang/String;

    goto/16 :goto_2

    .line 394
    .end local v14    # "inputMaskType":I
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTInputText;->type:Ljava/lang/String;

    move-object/from16 v26, v0

    const-string v27, "date"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTInputText;->type:Ljava/lang/String;

    move-object/from16 v26, v0

    const-string v27, "calendar"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_14

    .line 395
    :cond_12
    if-nez v13, :cond_13

    .line 396
    const-string v13, "{D}"

    .line 398
    :cond_13
    invoke-static {v13}, Lnet/veritran/vtuserapplication/ui/maskhandler/MaskBuilder;->buildHandler(Ljava/lang/String;)Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/veritran/component/VTInputText;->maskHandler:Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;

    goto/16 :goto_3

    .line 403
    :cond_14
    const/16 v26, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/veritran/component/VTInputText;->maskHandler:Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;

    goto/16 :goto_3

    .line 557
    .restart local v6    # "displayName":Ljava/lang/String;
    :cond_15
    const-string v26, "[0-9]"

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTInputText;->type:Ljava/lang/String;

    move-object/from16 v26, v0

    if-eqz v26, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTInputText;->type:Ljava/lang/String;

    move-object/from16 v26, v0

    const-string v27, "number"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_1d

    .line 558
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTInputText;->vtInputTextView:Lnet/veritran/component/view/VTTextInterface;

    move-object/from16 v26, v0

    const v27, 0x80003

    invoke-interface/range {v26 .. v27}, Lnet/veritran/component/view/VTTextInterface;->setRawInputType(I)V

    .line 575
    :cond_17
    :goto_7
    new-instance v26, Lnet/veritran/component/VTInputText$2;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lnet/veritran/component/VTInputText$2;-><init>(Lnet/veritran/component/VTInputText;)V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/veritran/component/VTInputText;->filter:Landroid/text/InputFilter;

    .line 651
    new-instance v26, Lnet/veritran/component/VTInputText$3;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lnet/veritran/component/VTInputText$3;-><init>(Lnet/veritran/component/VTInputText;)V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/veritran/component/VTInputText;->filterFree:Landroid/text/InputFilter;

    .line 710
    new-instance v26, Lnet/veritran/component/VTInputText$4;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lnet/veritran/component/VTInputText$4;-><init>(Lnet/veritran/component/VTInputText;)V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/veritran/component/VTInputText;->filterText:Landroid/text/InputFilter;

    .line 742
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTInputText;->type:Ljava/lang/String;

    move-object/from16 v26, v0

    if-eqz v26, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTInputText;->type:Ljava/lang/String;

    move-object/from16 v26, v0

    const-string v27, "date"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTInputText;->type:Ljava/lang/String;

    move-object/from16 v26, v0

    const-string v27, "calendar"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_22

    .line 743
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTInputText;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-object/from16 v26, v0

    const-string v27, "minLength"

    invoke-virtual/range {v26 .. v27}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTInputText;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v16

    .line 744
    .local v16, "minLengthAttr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTInputText;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-object/from16 v26, v0

    const-string v27, "maxLength"

    invoke-virtual/range {v26 .. v27}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTInputText;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v15

    .line 747
    .local v15, "maxLengthAttr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTInputText;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-object/from16 v26, v0

    const-string v27, "onCompleteValid"

    invoke-virtual/range {v26 .. v27}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTInputText;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/veritran/component/VTInputText;->onCompleteValid:Ljava/lang/String;

    .line 748
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTInputText;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-object/from16 v26, v0

    const-string v27, "onCompleteInvalid"

    invoke-virtual/range {v26 .. v27}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTInputText;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/veritran/component/VTInputText;->onCompleteInvalid:Ljava/lang/String;

    .line 749
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTInputText;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-object/from16 v26, v0

    const-string v27, "onValid"

    invoke-virtual/range {v26 .. v27}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTInputText;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/veritran/component/VTInputText;->onValid:Ljava/lang/String;

    .line 750
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTInputText;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-object/from16 v26, v0

    const-string v27, "onInvalid"

    invoke-virtual/range {v26 .. v27}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTInputText;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/veritran/component/VTInputText;->onInvalid:Ljava/lang/String;

    .line 755
    if-eqz v16, :cond_18

    .line 757
    :try_start_2
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lnet/veritran/component/VTInputText;->minLength:I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 763
    :cond_18
    :goto_8
    if-eqz v15, :cond_19

    .line 765
    :try_start_3
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lnet/veritran/component/VTInputText;->maxLength:I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    .line 771
    :cond_19
    :goto_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/veritran/component/VTInputText;->isPinType:Z

    move/from16 v26, v0

    if-eqz v26, :cond_1b

    .line 773
    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/VTInputText;->maxLength:I

    move/from16 v26, v0

    if-gtz v26, :cond_1a

    .line 775
    const/16 v26, 0x4

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lnet/veritran/component/VTInputText;->maxLength:I

    .line 778
    :cond_1a
    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/VTInputText;->maxLength:I

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lnet/veritran/component/VTInputText;->minLength:I

    .line 780
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTInputText;->vtInputTextView:Lnet/veritran/component/view/VTTextInterface;

    move-object/from16 v26, v0

    check-cast v26, Lnet/veritran/component/view/VTPinComponentView;

    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/VTInputText;->maxLength:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lnet/veritran/component/view/VTPinComponentView;->setPinCount(I)V

    .line 783
    :cond_1b
    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/VTInputText;->maxLength:I

    move/from16 v26, v0

    if-lez v26, :cond_21

    .line 785
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTInputText;->type:Ljava/lang/String;

    move-object/from16 v26, v0

    const-string v27, "email"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_20

    .line 786
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTInputText;->vtInputTextView:Lnet/veritran/component/view/VTTextInterface;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Landroid/text/InputFilter;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    new-instance v29, Landroid/text/InputFilter$LengthFilter;

    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/VTInputText;->maxLength:I

    move/from16 v30, v0

    invoke-direct/range {v29 .. v30}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v29, v27, v28

    invoke-interface/range {v26 .. v27}, Lnet/veritran/component/view/VTTextInterface;->setFilters([Landroid/text/InputFilter;)V

    .line 794
    :cond_1c
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTInputText;->vtInputTextView:Lnet/veritran/component/view/VTTextInterface;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lnet/veritran/component/view/VTTextInterface;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto/16 :goto_4

    .line 564
    .end local v15    # "maxLengthAttr":Ljava/lang/String;
    .end local v16    # "minLengthAttr":Ljava/lang/String;
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTInputText;->type:Ljava/lang/String;

    move-object/from16 v26, v0

    if-eqz v26, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTInputText;->type:Ljava/lang/String;

    move-object/from16 v26, v0

    const-string v27, "email"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_1e

    .line 565
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTInputText;->vtInputTextView:Lnet/veritran/component/view/VTTextInterface;

    move-object/from16 v26, v0

    const v27, 0x80021

    invoke-interface/range {v26 .. v27}, Lnet/veritran/component/view/VTTextInterface;->setInputType(I)V

    goto/16 :goto_7

    .line 567
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTInputText;->type:Ljava/lang/String;

    move-object/from16 v26, v0

    if-eqz v26, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTInputText;->type:Ljava/lang/String;

    move-object/from16 v26, v0

    const-string v27, "url"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_1f

    .line 568
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTInputText;->vtInputTextView:Lnet/veritran/component/view/VTTextInterface;

    move-object/from16 v26, v0

    const v27, 0x80011

    invoke-interface/range {v26 .. v27}, Lnet/veritran/component/view/VTTextInterface;->setInputType(I)V

    goto/16 :goto_7

    .line 570
    :cond_1f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/veritran/component/VTInputText;->isCurrencyView:Z

    move/from16 v26, v0

    if-nez v26, :cond_17

    .line 571
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTInputText;->vtInputTextView:Lnet/veritran/component/view/VTTextInterface;

    move-object/from16 v26, v0

    const v27, 0x80091

    invoke-interface/range {v26 .. v27}, Lnet/veritran/component/view/VTTextInterface;->setInputType(I)V

    goto/16 :goto_7

    .line 758
    .restart local v15    # "maxLengthAttr":Ljava/lang/String;
    .restart local v16    # "minLengthAttr":Ljava/lang/String;
    :catch_2
    move-exception v8

    .line 759
    .local v8, "ex":Ljava/lang/NumberFormatException;
    const-string v26, "VTInputTextComponent"

    const-string v27, "Min Length not set"

    invoke-static/range {v26 .. v27}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 766
    .end local v8    # "ex":Ljava/lang/NumberFormatException;
    :catch_3
    move-exception v8

    .line 767
    .restart local v8    # "ex":Ljava/lang/NumberFormatException;
    const-string v26, "VTInputTextComponent"

    const-string v27, "Max Length not set"

    invoke-static/range {v26 .. v27}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 788
    .end local v8    # "ex":Ljava/lang/NumberFormatException;
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTInputText;->vtInputTextView:Lnet/veritran/component/view/VTTextInterface;

    move-object/from16 v26, v0

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [Landroid/text/InputFilter;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTInputText;->filterText:Landroid/text/InputFilter;

    move-object/from16 v29, v0

    aput-object v29, v27, v28

    const/16 v28, 0x1

    new-instance v29, Landroid/text/InputFilter$LengthFilter;

    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/VTInputText;->maxLength:I

    move/from16 v30, v0

    invoke-direct/range {v29 .. v30}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v29, v27, v28

    invoke-interface/range {v26 .. v27}, Lnet/veritran/component/view/VTTextInterface;->setFilters([Landroid/text/InputFilter;)V

    goto/16 :goto_a

    .line 790
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTInputText;->type:Ljava/lang/String;

    move-object/from16 v26, v0

    const-string v27, "email"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_1c

    .line 791
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTInputText;->vtInputTextView:Lnet/veritran/component/view/VTTextInterface;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Landroid/text/InputFilter;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTInputText;->filterText:Landroid/text/InputFilter;

    move-object/from16 v29, v0

    aput-object v29, v27, v28

    invoke-interface/range {v26 .. v27}, Lnet/veritran/component/view/VTTextInterface;->setFilters([Landroid/text/InputFilter;)V

    goto/16 :goto_a

    .line 795
    .end local v15    # "maxLengthAttr":Ljava/lang/String;
    .end local v16    # "minLengthAttr":Ljava/lang/String;
    :cond_22
    const-string v26, "X{"

    move-object/from16 v0, v26

    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_23

    const-string v26, "}"

    move-object/from16 v0, v26

    invoke-virtual {v13, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_23

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v26

    const/16 v27, 0x6

    move/from16 v0, v26

    move/from16 v1, v27

    if-gt v0, v1, :cond_23

    .line 796
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTInputText;->vtInputTextView:Lnet/veritran/component/view/VTTextInterface;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Landroid/text/InputFilter;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTInputText;->filterFree:Landroid/text/InputFilter;

    move-object/from16 v29, v0

    aput-object v29, v27, v28

    invoke-interface/range {v26 .. v27}, Lnet/veritran/component/view/VTTextInterface;->setFilters([Landroid/text/InputFilter;)V

    goto/16 :goto_4

    .line 797
    :cond_23
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/veritran/component/VTInputText;->isCurrencyView:Z

    move/from16 v26, v0

    if-nez v26, :cond_c

    .line 798
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTInputText;->vtInputTextView:Lnet/veritran/component/view/VTTextInterface;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Landroid/text/InputFilter;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTInputText;->filter:Landroid/text/InputFilter;

    move-object/from16 v29, v0

    aput-object v29, v27, v28

    invoke-interface/range {v26 .. v27}, Lnet/veritran/component/view/VTTextInterface;->setFilters([Landroid/text/InputFilter;)V

    goto/16 :goto_4

    .line 831
    .restart local v4    # "c":I
    .restart local v21    # "sDefaultText":Ljava/lang/String;
    .restart local v25    # "width":Ljava/lang/String;
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTInputText;->vtInputTextView:Lnet/veritran/component/view/VTTextInterface;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lnet/veritran/component/view/VTTextInterface;->getText()Landroid/text/Editable;

    move-result-object v26

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v27

    invoke-interface/range {v26 .. v27}, Landroid/text/Editable;->append(C)Landroid/text/Editable;

    goto/16 :goto_6

    .line 836
    .end local v4    # "c":I
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTInputText;->vtInputTextView:Lnet/veritran/component/view/VTTextInterface;

    move-object/from16 v26, v0

    const-string v27, ""

    invoke-interface/range {v26 .. v27}, Lnet/veritran/component/view/VTTextInterface;->setText(Ljava/lang/CharSequence;)V

    .line 839
    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTInputText;->maskHandler:Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;

    move-object/from16 v26, v0

    if-eqz v26, :cond_2d

    .line 840
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTInputText;->maskHandler:Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;->getEnteredText()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/veritran/component/VTInputText;->lastEnteredText:Ljava/lang/String;

    .line 845
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTInputText;->type:Ljava/lang/String;

    move-object/from16 v26, v0

    if-eqz v26, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTInputText;->type:Ljava/lang/String;

    move-object/from16 v26, v0

    const-string v27, "date"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTInputText;->type:Ljava/lang/String;

    move-object/from16 v26, v0

    const-string v27, "calendar"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_27

    .line 847
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTInputText;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-object/from16 v26, v0

    const-string v27, "onClear"

    invoke-virtual/range {v26 .. v27}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTInputText;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/veritran/component/VTInputText;->onClear:Ljava/lang/String;

    .line 850
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTInputText;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-object/from16 v26, v0

    const-string v27, "onChange"

    invoke-virtual/range {v26 .. v27}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTInputText;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/veritran/component/VTInputText;->onChange:Ljava/lang/String;

    .line 852
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTInputText;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-object/from16 v26, v0

    const-string v27, "onfocus"

    invoke-virtual/range {v26 .. v27}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTInputText;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/veritran/component/VTInputText;->onFocus:Ljava/lang/String;

    .line 853
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTInputText;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-object/from16 v26, v0

    const-string v27, "onblur"

    invoke-virtual/range {v26 .. v27}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTInputText;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/veritran/component/VTInputText;->onBlur:Ljava/lang/String;

    .line 855
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/veritran/component/VTInputText;->isPinType:Z

    move/from16 v26, v0

    if-eqz v26, :cond_2e

    .line 856
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTInputText;->vtInputTextView:Lnet/veritran/component/view/VTTextInterface;

    move-object/from16 v26, v0

    check-cast v26, Lnet/veritran/component/view/VTPinComponentView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTInputText;->onFocus:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTInputText;->onBlur:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v26 .. v28}, Lnet/veritran/component/view/VTPinComponentView;->setFocusAndBlurActions(Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    :cond_28
    :goto_c
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTInputText;->defineWidth()V

    .line 865
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTInputText;->defineHeight()V

    .line 866
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTInputText;->defineMargins()V

    .line 868
    const/high16 v3, 0x10000000

    .line 869
    .local v3, "IMEOption":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTInputText;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-object/from16 v26, v0

    const-string v27, "submitbutton"

    invoke-virtual/range {v26 .. v27}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 870
    .local v22, "sSubmitButton":Ljava/lang/String;
    if-eqz v22, :cond_30

    .line 871
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTInputText;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v26

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v22

    .line 875
    :goto_d
    const-string v26, ""

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_29

    .line 876
    const/high16 v26, 0x8000000

    or-int v3, v3, v26

    .line 878
    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTInputText;->vtInputTextView:Lnet/veritran/component/view/VTTextInterface;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-interface {v0, v3}, Lnet/veritran/component/view/VTTextInterface;->setImeOptions(I)V

    .line 880
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTInputText;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-object/from16 v26, v0

    const-string v27, "submitbuttontext"

    invoke-virtual/range {v26 .. v27}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 882
    .local v23, "sSubmitButtonText":Ljava/lang/String;
    if-eqz v23, :cond_2b

    .line 883
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTInputText;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v26

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v23

    .line 884
    const-string v26, ""

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_2b

    .line 886
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v26

    const/16 v27, 0xa

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_2a

    .line 887
    const/16 v26, 0x0

    const/16 v27, 0xa

    move-object/from16 v0, v23

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    .line 890
    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTInputText;->vtInputTextView:Lnet/veritran/component/view/VTTextInterface;

    move-object/from16 v26, v0

    const/16 v27, 0x6

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    move/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lnet/veritran/component/view/VTTextInterface;->setImeActionLabel(Ljava/lang/CharSequence;I)V

    .line 894
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTInputText;->vtInputTextView:Lnet/veritran/component/view/VTTextInterface;

    move-object/from16 v26, v0

    new-instance v27, Lnet/veritran/component/VTInputText$5;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lnet/veritran/component/VTInputText$5;-><init>(Lnet/veritran/component/VTInputText;)V

    invoke-interface/range {v26 .. v27}, Lnet/veritran/component/view/VTTextInterface;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 918
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/veritran/component/VTInputText;->haveHint:Z

    move/from16 v26, v0

    if-eqz v26, :cond_31

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/veritran/component/VTInputText;->isPinType:Z

    move/from16 v26, v0

    if-nez v26, :cond_31

    .line 919
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTInputText;->getActivity()Lnet/veritran/VTCommonActivity;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTInputText;->vtInputTextView:Lnet/veritran/component/view/VTTextInterface;

    move-object/from16 v26, v0

    check-cast v26, Lnet/veritran/component/view/VTInputTextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTInputText;->fontSize:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lnet/veritran/VTCommonActivity;->setTextSize(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 920
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTInputText;->vtInputTextView:Lnet/veritran/component/view/VTTextInterface;

    move-object/from16 v26, v0

    check-cast v26, Lnet/veritran/component/view/VTInputTextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTInputText;->fontFamily:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTInputText;->fontStyle:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTInputText;->fontWeight:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-static/range {v26 .. v29}, Lnet/veritran/utils/VTFontHelper;->setTextFamily(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 922
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTInputText;->vtInputTextView:Lnet/veritran/component/view/VTTextInterface;

    move-object/from16 v26, v0

    const/16 v27, 0x1f4

    const/16 v28, 0x0

    invoke-static/range {v27 .. v28}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v27

    const/16 v28, 0x1f4

    const/16 v29, 0x0

    .line 923
    invoke-static/range {v28 .. v29}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v28

    .line 922
    invoke-interface/range {v26 .. v28}, Lnet/veritran/component/view/VTTextInterface;->measure(II)V

    .line 924
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTInputText;->vtInputTextView:Lnet/veritran/component/view/VTTextInterface;

    move-object/from16 v26, v0

    check-cast v26, Lnet/veritran/component/view/VTInputTextView;

    invoke-virtual/range {v26 .. v26}, Lnet/veritran/component/view/VTInputTextView;->getMeasuredHeight()I

    move-result v18

    .line 927
    .local v18, "normalHeight":I
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTInputText;->getActivity()Lnet/veritran/VTCommonActivity;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTInputText;->vtInputTextView:Lnet/veritran/component/view/VTTextInterface;

    move-object/from16 v26, v0

    check-cast v26, Lnet/veritran/component/view/VTInputTextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTInputText;->hintFontSize:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lnet/veritran/VTCommonActivity;->setTextSize(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 928
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTInputText;->vtInputTextView:Lnet/veritran/component/view/VTTextInterface;

    move-object/from16 v26, v0

    check-cast v26, Lnet/veritran/component/view/VTInputTextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTInputText;->hintFontFamily:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTInputText;->hintFontStyle:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTInputText;->hintFontWeight:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-static/range {v26 .. v29}, Lnet/veritran/utils/VTFontHelper;->setTextFamily(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 930
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTInputText;->vtInputTextView:Lnet/veritran/component/view/VTTextInterface;

    move-object/from16 v26, v0

    const/16 v27, 0x1f4

    const/high16 v28, -0x80000000

    invoke-static/range {v27 .. v28}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v27

    const/16 v28, 0x1f4

    const/high16 v29, -0x80000000

    .line 931
    invoke-static/range {v28 .. v29}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v28

    .line 930
    invoke-interface/range {v26 .. v28}, Lnet/veritran/component/view/VTTextInterface;->measure(II)V

    .line 932
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTInputText;->vtInputTextView:Lnet/veritran/component/view/VTTextInterface;

    move-object/from16 v26, v0

    check-cast v26, Lnet/veritran/component/view/VTInputTextView;

    invoke-virtual/range {v26 .. v26}, Lnet/veritran/component/view/VTInputTextView;->getMeasuredHeight()I

    move-result v11

    .line 934
    .local v11, "hintHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTInputText;->vtInputTextView:Lnet/veritran/component/view/VTTextInterface;

    move-object/from16 v26, v0

    move/from16 v0, v18

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v27

    invoke-interface/range {v26 .. v27}, Lnet/veritran/component/view/VTTextInterface;->setMinHeight(I)V

    .line 936
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTInputText;->vtInputTextView:Lnet/veritran/component/view/VTTextInterface;

    move-object/from16 v26, v0

    check-cast v26, Lnet/veritran/component/view/VTInputTextView;

    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Lnet/veritran/component/view/VTInputTextView;->setWasHintHeightPreCalculated(Z)V

    .line 942
    .end local v11    # "hintHeight":I
    .end local v18    # "normalHeight":I
    :cond_2c
    :goto_e
    return-void

    .line 842
    .end local v3    # "IMEOption":I
    .end local v22    # "sSubmitButton":Ljava/lang/String;
    .end local v23    # "sSubmitButtonText":Ljava/lang/String;
    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTInputText;->vtInputTextView:Lnet/veritran/component/view/VTTextInterface;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lnet/veritran/component/view/VTTextInterface;->getText()Landroid/text/Editable;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/veritran/component/VTInputText;->lastEnteredText:Ljava/lang/String;

    goto/16 :goto_b

    .line 857
    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTInputText;->vtInputTextView:Lnet/veritran/component/view/VTTextInterface;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    instance-of v0, v0, Lnet/veritran/component/view/VTInputTextView;

    move/from16 v26, v0

    if-eqz v26, :cond_2f

    .line 858
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTInputText;->vtInputTextView:Lnet/veritran/component/view/VTTextInterface;

    move-object/from16 v26, v0

    check-cast v26, Lnet/veritran/component/view/VTInputTextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTInputText;->onFocus:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTInputText;->onBlur:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v26 .. v28}, Lnet/veritran/component/view/VTInputTextView;->setFocusAndBlurActions(Ljava/lang/String;Ljava/lang/String;)V

    .line 859
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTInputText;->vtInputTextView:Lnet/veritran/component/view/VTTextInterface;

    move-object/from16 v26, v0

    check-cast v26, Lnet/veritran/component/view/VTInputTextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTInputText;->vtInputTextView:Lnet/veritran/component/view/VTTextInterface;

    move-object/from16 v27, v0

    check-cast v27, Lnet/veritran/component/view/VTInputTextView;

    invoke-virtual/range {v27 .. v27}, Lnet/veritran/component/view/VTInputTextView;->getCustomOnFocusChangeListener()Landroid/view/View$OnFocusChangeListener;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Lnet/veritran/component/view/VTInputTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    goto/16 :goto_c

    .line 860
    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTInputText;->vtInputTextView:Lnet/veritran/component/view/VTTextInterface;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    instance-of v0, v0, Lnet/veritran/component/view/VTInputCurrencyTextView;

    move/from16 v26, v0

    if-eqz v26, :cond_28

    .line 861
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTInputText;->vtInputTextView:Lnet/veritran/component/view/VTTextInterface;

    move-object/from16 v26, v0

    check-cast v26, Lnet/veritran/component/view/VTInputCurrencyTextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTInputText;->onFocus:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTInputText;->onBlur:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v26 .. v28}, Lnet/veritran/component/view/VTInputCurrencyTextView;->setFocusAndBlurActions(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    .line 873
    .restart local v3    # "IMEOption":I
    .restart local v22    # "sSubmitButton":Ljava/lang/String;
    :cond_30
    const-string v22, ""

    goto/16 :goto_d

    .line 938
    .restart local v23    # "sSubmitButtonText":Ljava/lang/String;
    :cond_31
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/veritran/component/VTInputText;->isPinType:Z

    move/from16 v26, v0

    if-nez v26, :cond_2c

    .line 939
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTInputText;->getActivity()Lnet/veritran/VTCommonActivity;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTInputText;->vtInputTextView:Lnet/veritran/component/view/VTTextInterface;

    move-object/from16 v26, v0

    check-cast v26, Lnet/veritran/component/view/VTInputTextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTInputText;->fontSize:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lnet/veritran/VTCommonActivity;->setTextSize(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 940
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTInputText;->vtInputTextView:Lnet/veritran/component/view/VTTextInterface;

    move-object/from16 v26, v0

    check-cast v26, Lnet/veritran/component/view/VTInputTextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTInputText;->fontFamily:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTInputText;->fontStyle:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTInputText;->fontWeight:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-static/range {v26 .. v29}, Lnet/veritran/utils/VTFontHelper;->setTextFamily(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_e

    .line 376
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setMinMaxLength(Ljava/lang/String;)V
    .locals 13
    .param p1, "mask"    # Ljava/lang/String;

    .prologue
    .line 240
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "^([X9]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "{"

    invoke-static {v12}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "([0-9]+)?"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "}"

    invoke-static {v12}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")?("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "*{"

    invoke-static {v12}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "([0-9]+)?"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "}"

    invoke-static {v12}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")?$"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 241
    .local v4, "maskRequiredOptional":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "^("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "*{"

    invoke-static {v12}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "([0-9]+)?"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "}"

    invoke-static {v12}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")?([X9]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "{"

    invoke-static {v12}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "([0-9]+)?"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "}"

    invoke-static {v12}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")?$"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 243
    .local v3, "maskOptionalRequired":Ljava/lang/String;
    const/4 v8, 0x0

    .line 244
    .local v8, "req":I
    const/4 v5, 0x0

    .line 248
    .local v5, "opt":I
    :try_start_0
    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    .line 249
    .local v7, "patReqOpt":Ljava/util/regex/Pattern;
    if-eqz p1, :cond_2

    move-object v11, p1

    :goto_0
    invoke-virtual {v7, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 251
    .local v2, "mReqOpt":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 253
    const/4 v11, 0x2

    invoke-virtual {v2, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    .line 254
    .local v10, "strReq":Ljava/lang/String;
    const/4 v11, 0x4

    invoke-virtual {v2, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    .line 256
    .local v9, "strOpt":Ljava/lang/String;
    if-eqz v10, :cond_0

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_0

    .line 258
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 261
    :cond_0
    if-eqz v9, :cond_1

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_1

    .line 263
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 290
    .end local v9    # "strOpt":Ljava/lang/String;
    .end local v10    # "strReq":Ljava/lang/String;
    .end local p1    # "mask":Ljava/lang/String;
    :cond_1
    :goto_1
    add-int v11, v8, v5

    iput v11, p0, Lnet/veritran/component/VTInputText;->maxLength:I

    .line 292
    .end local v2    # "mReqOpt":Ljava/util/regex/Matcher;
    .end local v7    # "patReqOpt":Ljava/util/regex/Pattern;
    :goto_2
    return-void

    .line 249
    .restart local v7    # "patReqOpt":Ljava/util/regex/Pattern;
    .restart local p1    # "mask":Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v11, ""

    goto :goto_0

    .line 268
    .restart local v2    # "mReqOpt":Ljava/util/regex/Matcher;
    :cond_3
    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    .line 269
    .local v6, "patOptReq":Ljava/util/regex/Pattern;
    if-eqz p1, :cond_5

    .end local p1    # "mask":Ljava/lang/String;
    :goto_3
    invoke-virtual {v6, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 271
    .local v1, "mOptReq":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 273
    const/4 v11, 0x4

    invoke-virtual {v1, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    .line 274
    .restart local v10    # "strReq":Ljava/lang/String;
    const/4 v11, 0x2

    invoke-virtual {v1, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    .line 276
    .restart local v9    # "strOpt":Ljava/lang/String;
    if-eqz v10, :cond_4

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_4

    .line 278
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 281
    :cond_4
    if-eqz v9, :cond_1

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_1

    .line 282
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    goto :goto_1

    .line 269
    .end local v1    # "mOptReq":Ljava/util/regex/Matcher;
    .end local v9    # "strOpt":Ljava/lang/String;
    .end local v10    # "strReq":Ljava/lang/String;
    .restart local p1    # "mask":Ljava/lang/String;
    :cond_5
    const-string p1, ""
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 286
    .end local v2    # "mReqOpt":Ljava/util/regex/Matcher;
    .end local v6    # "patOptReq":Ljava/util/regex/Pattern;
    .end local v7    # "patReqOpt":Ljava/util/regex/Pattern;
    .end local p1    # "mask":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 287
    .local v0, "ex":Ljava/lang/NumberFormatException;
    goto :goto_2
.end method

.method private validateRegex()Z
    .locals 8

    .prologue
    .line 979
    invoke-virtual {p0}, Lnet/veritran/component/VTInputText;->enteredTextIsEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 980
    invoke-virtual {p0}, Lnet/veritran/component/VTInputText;->getEnteredText()Ljava/lang/String;

    move-result-object v5

    .line 981
    .local v5, "storeValue":Ljava/lang/String;
    iget-object v6, p0, Lnet/veritran/component/VTInputText;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v7, "regexp"

    invoke-virtual {v6, v7}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 982
    .local v4, "regexp":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 983
    const/4 v6, 0x0

    invoke-static {v4, v6}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v4

    .line 984
    const/4 v2, 0x0

    .line 986
    .local v2, "match":Z
    :try_start_0
    new-instance v3, Lme/regexp/RE;

    invoke-direct {v3, v4}, Lme/regexp/RE;-><init>(Ljava/lang/String;)V

    .line 988
    .local v3, "r":Lme/regexp/RE;
    invoke-virtual {v3, v5}, Lme/regexp/RE;->match(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1000
    .end local v2    # "match":Z
    .end local v3    # "r":Lme/regexp/RE;
    .end local v4    # "regexp":Ljava/lang/String;
    .end local v5    # "storeValue":Ljava/lang/String;
    :goto_0
    return v2

    .line 989
    .restart local v2    # "match":Z
    .restart local v4    # "regexp":Ljava/lang/String;
    .restart local v5    # "storeValue":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 991
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v5, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    goto :goto_0

    .line 992
    :catch_1
    move-exception v1

    .line 993
    .local v1, "ex2":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0

    .line 1000
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v1    # "ex2":Ljava/lang/Exception;
    .end local v2    # "match":Z
    .end local v4    # "regexp":Ljava/lang/String;
    .end local v5    # "storeValue":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 1125
    iget-object v3, p0, Lnet/veritran/component/VTInputText;->type:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lnet/veritran/component/VTInputText;->type:Ljava/lang/String;

    const-string v4, "email"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1126
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 1127
    iget-object v3, p0, Lnet/veritran/component/VTInputText;->validChars:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lnet/veritran/component/VTInputText;->validChars:Ljava/lang/String;

    invoke-interface {p1, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1128
    add-int/lit8 v3, v1, 0x1

    const-string v4, ""

    invoke-interface {p1, v1, v3, v4}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1126
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1133
    .end local v1    # "i":I
    :cond_1
    iget-object v3, p0, Lnet/veritran/component/VTInputText;->maskHandler:Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;

    if-eqz v3, :cond_4

    .line 1134
    const/4 v2, 0x0

    .line 1135
    .local v2, "maskMinLength":I
    iget-object v3, p0, Lnet/veritran/component/VTInputText;->maskHandler:Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Lnet/veritran/vtuserapplication/ui/maskhandler/DecimalMaskHandler;

    if-ne v3, v4, :cond_2

    .line 1136
    const/4 v2, 0x2

    .line 1138
    :cond_2
    :goto_1
    iget-object v3, p0, Lnet/veritran/component/VTInputText;->maskHandler:Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;

    invoke-virtual {v3}, Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;->getEnteredText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v2, :cond_3

    .line 1139
    iget-object v3, p0, Lnet/veritran/component/VTInputText;->maskHandler:Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;

    invoke-virtual {v3}, Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;->deleteChar()Z

    goto :goto_1

    .line 1142
    :cond_3
    const/4 v0, 0x0

    .local v0, "c":I
    :goto_2
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 1143
    iget-object v3, p0, Lnet/veritran/component/VTInputText;->maskHandler:Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;

    invoke-interface {p1, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;->addChar(I)Z

    .line 1142
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1147
    .end local v0    # "c":I
    .end local v2    # "maskMinLength":I
    :cond_4
    invoke-virtual {p0}, Lnet/veritran/component/VTInputText;->updateAutoDumpBackground()V

    .line 1148
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 1103
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iput v0, p0, Lnet/veritran/component/VTInputText;->lengthBeforeChange:I

    .line 1104
    return-void
.end method

.method public componentWillFinish()V
    .locals 3

    .prologue
    .line 1215
    iget-object v1, p0, Lnet/veritran/component/VTInputText;->vtInputTextView:Lnet/veritran/component/view/VTTextInterface;

    invoke-interface {v1}, Lnet/veritran/component/view/VTTextInterface;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1217
    invoke-virtual {p0}, Lnet/veritran/component/VTInputText;->getActivity()Lnet/veritran/VTCommonActivity;

    move-result-object v1

    const-string v2, "input_method"

    .line 1218
    invoke-virtual {v1, v2}, Lnet/veritran/VTCommonActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1219
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lnet/veritran/component/VTInputText;->vtInputTextView:Lnet/veritran/component/view/VTTextInterface;

    invoke-interface {v1}, Lnet/veritran/component/view/VTTextInterface;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1222
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    invoke-super {p0}, Lnet/veritran/component/VTUIComponent;->componentWillFinish()V

    .line 1223
    return-void
.end method

.method public enteredTextIsEmpty()Z
    .locals 1

    .prologue
    .line 1173
    iget-object v0, p0, Lnet/veritran/component/VTInputText;->maskHandler:Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;

    if-eqz v0, :cond_0

    .line 1174
    iget-object v0, p0, Lnet/veritran/component/VTInputText;->maskHandler:Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;->enteredTextIsEmpty()Z

    move-result v0

    .line 1178
    :goto_0
    return v0

    .line 1175
    :cond_0
    iget-boolean v0, p0, Lnet/veritran/component/VTInputText;->isCurrencyView:Z

    if-eqz v0, :cond_1

    .line 1176
    iget-object v0, p0, Lnet/veritran/component/VTInputText;->vtInputTextView:Lnet/veritran/component/view/VTTextInterface;

    check-cast v0, Lnet/veritran/component/view/VTInputCurrencyTextView;

    invoke-virtual {v0}, Lnet/veritran/component/view/VTInputCurrencyTextView;->isEmpty()Z

    move-result v0

    goto :goto_0

    .line 1178
    :cond_1
    iget-object v0, p0, Lnet/veritran/component/VTInputText;->vtInputTextView:Lnet/veritran/component/view/VTTextInterface;

    invoke-interface {v0}, Lnet/veritran/component/view/VTTextInterface;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public executeEvent(Ljava/lang/String;)Z
    .locals 1
    .param p1, "event"    # Ljava/lang/String;

    .prologue
    .line 108
    invoke-virtual {p0, p1}, Lnet/veritran/component/VTInputText;->checkEventType(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0}, Lnet/veritran/component/VTInputText;->isRefreshEvent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    invoke-direct {p0}, Lnet/veritran/component/VTInputText;->initInput()V

    .line 111
    invoke-virtual {p0}, Lnet/veritran/component/VTInputText;->refreshMeasure()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {p0}, Lnet/veritran/component/VTInputText;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 113
    invoke-virtual {p0}, Lnet/veritran/component/VTInputText;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 125
    :cond_0
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 115
    :cond_1
    invoke-virtual {p0}, Lnet/veritran/component/VTInputText;->isVisibilityEvent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 116
    invoke-virtual {p0}, Lnet/veritran/component/VTInputText;->updateVisibility()V

    goto :goto_0

    .line 117
    :cond_2
    const-string v0, "focus"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 118
    iget-object v0, p0, Lnet/veritran/component/VTInputText;->vtInputTextView:Lnet/veritran/component/view/VTTextInterface;

    invoke-interface {v0}, Lnet/veritran/component/view/VTTextInterface;->forceFocus()V

    goto :goto_0

    .line 119
    :cond_3
    const-string v0, "clear"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 120
    iget-object v0, p0, Lnet/veritran/component/VTInputText;->vtInputTextView:Lnet/veritran/component/view/VTTextInterface;

    invoke-interface {v0}, Lnet/veritran/component/view/VTTextInterface;->clear()V

    goto :goto_0

    .line 122
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getEnteredText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1163
    iget-object v0, p0, Lnet/veritran/component/VTInputText;->maskHandler:Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;

    if-eqz v0, :cond_0

    .line 1164
    iget-object v0, p0, Lnet/veritran/component/VTInputText;->maskHandler:Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;->getEnteredText()Ljava/lang/String;

    move-result-object v0

    .line 1168
    :goto_0
    return-object v0

    .line 1165
    :cond_0
    iget-boolean v0, p0, Lnet/veritran/component/VTInputText;->isCurrencyView:Z

    if-eqz v0, :cond_1

    .line 1166
    iget-object v0, p0, Lnet/veritran/component/VTInputText;->vtInputTextView:Lnet/veritran/component/view/VTTextInterface;

    check-cast v0, Lnet/veritran/component/view/VTInputCurrencyTextView;

    invoke-virtual {v0}, Lnet/veritran/component/view/VTInputCurrencyTextView;->getEnteredText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1168
    :cond_1
    iget-object v0, p0, Lnet/veritran/component/VTInputText;->vtInputTextView:Lnet/veritran/component/view/VTTextInterface;

    invoke-interface {v0}, Lnet/veritran/component/view/VTTextInterface;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 970
    iget-object v0, p0, Lnet/veritran/component/VTInputText;->vtInputTextView:Lnet/veritran/component/view/VTTextInterface;

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public init()V
    .locals 17

    .prologue
    .line 139
    invoke-super/range {p0 .. p0}, Lnet/veritran/component/VTUIComponent;->init()V

    .line 141
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/veritran/component/VTInputText;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v2, "inputMask"

    invoke-virtual {v1, v2}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 143
    .local v10, "inputMask":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "^"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "{"

    invoke-static {v2}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "([0-9]+)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-static {v2}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "([0-9]+)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-static {v2}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "$"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 145
    .local v12, "maskDecimal":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/veritran/component/VTInputText;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v2, "type"

    invoke-virtual {v1, v2}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 147
    .local v15, "typeStr":Ljava/lang/String;
    if-eqz v15, :cond_0

    const-string v1, "PIN"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 148
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lnet/veritran/component/VTInputText;->isPinType:Z

    .line 153
    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lnet/veritran/component/VTInputText;->isPinType:Z

    if-eqz v1, :cond_3

    .line 155
    new-instance v14, Lnet/veritran/component/view/VTPinComponentView;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lnet/veritran/component/view/VTPinComponentView;-><init>(Lnet/veritran/component/VTUIComponent;)V

    .line 157
    .local v14, "pinComponentView":Lnet/veritran/component/view/VTPinComponentView;
    move-object/from16 v0, p0

    iput-object v14, v0, Lnet/veritran/component/VTInputText;->vtInputTextView:Lnet/veritran/component/view/VTTextInterface;

    .line 159
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lnet/veritran/component/VTInputText;->isCurrencyView:Z

    .line 161
    const-string v1, "VTInputTextComponent"

    const-string v2, "It\'s pin Type"

    invoke-static {v1, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/veritran/component/VTInputText;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v2, "pin-image-on"

    invoke-virtual {v1, v2}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTInputText;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v9

    .line 164
    .local v9, "imageOnName":Ljava/lang/String;
    if-eqz v9, :cond_1

    const-string v1, ""

    invoke-virtual {v9, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 165
    invoke-virtual {v14, v9}, Lnet/veritran/component/view/VTPinComponentView;->setSelectedPinImageName(Ljava/lang/String;)V

    .line 170
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/veritran/component/VTInputText;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v2, "pin-image-off"

    invoke-virtual {v1, v2}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTInputText;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v8

    .line 171
    .local v8, "imageOffName":Ljava/lang/String;
    if-eqz v8, :cond_2

    const-string v1, ""

    invoke-virtual {v8, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 172
    invoke-virtual {v14, v8}, Lnet/veritran/component/view/VTPinComponentView;->setNormalPinImageName(Ljava/lang/String;)V

    .line 201
    .end local v8    # "imageOffName":Ljava/lang/String;
    .end local v9    # "imageOnName":Ljava/lang/String;
    .end local v10    # "inputMask":Ljava/lang/String;
    .end local v14    # "pinComponentView":Lnet/veritran/component/view/VTPinComponentView;
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/veritran/component/VTInputText;->vtInputTextView:Lnet/veritran/component/view/VTTextInterface;

    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/veritran/component/VTInputText;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    invoke-virtual {v2}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getComponentName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lnet/veritran/component/view/VTTextInterface;->setInputName(Ljava/lang/String;)V

    .line 203
    invoke-direct/range {p0 .. p0}, Lnet/veritran/component/VTInputText;->initInput()V

    .line 208
    :goto_2
    return-void

    .line 167
    .restart local v9    # "imageOnName":Ljava/lang/String;
    .restart local v10    # "inputMask":Ljava/lang/String;
    .restart local v14    # "pinComponentView":Lnet/veritran/component/view/VTPinComponentView;
    :cond_1
    const-string v1, "rb_on"

    invoke-virtual {v14, v1}, Lnet/veritran/component/view/VTPinComponentView;->setSelectedPinImageName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 205
    .end local v9    # "imageOnName":Ljava/lang/String;
    .end local v10    # "inputMask":Ljava/lang/String;
    .end local v14    # "pinComponentView":Lnet/veritran/component/view/VTPinComponentView;
    :catch_0
    move-exception v7

    .line 206
    .local v7, "ex":Ljava/lang/Exception;
    const-string v1, "VTInputTextComponent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ex: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 174
    .end local v7    # "ex":Ljava/lang/Exception;
    .restart local v8    # "imageOffName":Ljava/lang/String;
    .restart local v9    # "imageOnName":Ljava/lang/String;
    .restart local v10    # "inputMask":Ljava/lang/String;
    .restart local v14    # "pinComponentView":Lnet/veritran/component/view/VTPinComponentView;
    :cond_2
    :try_start_1
    const-string v1, "rb_off"

    invoke-virtual {v14, v1}, Lnet/veritran/component/view/VTPinComponentView;->setNormalPinImageName(Ljava/lang/String;)V

    goto :goto_1

    .line 179
    .end local v8    # "imageOffName":Ljava/lang/String;
    .end local v9    # "imageOnName":Ljava/lang/String;
    .end local v14    # "pinComponentView":Lnet/veritran/component/view/VTPinComponentView;
    :cond_3
    invoke-static {v12}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v13

    .line 180
    .local v13, "pattern":Ljava/util/regex/Pattern;
    if-eqz v10, :cond_4

    .end local v10    # "inputMask":Ljava/lang/String;
    :goto_3
    invoke-virtual {v13, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    .line 182
    .local v11, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v11}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 184
    const/4 v1, 0x1

    invoke-virtual {v11, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 185
    .local v4, "wholePart":I
    const/4 v1, 0x2

    invoke-virtual {v11, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 187
    .local v3, "decimalPart":I
    new-instance v1, Lnet/veritran/component/view/VTInputCurrencyTextView;

    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v2

    invoke-virtual {v2}, Lnet/veritran/VTUserApplicationSmart;->getThousandsSeparator()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v2

    invoke-virtual {v2}, Lnet/veritran/VTUserApplicationSmart;->getDecimalPoint()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lnet/veritran/component/view/VTInputCurrencyTextView;-><init>(Lnet/veritran/component/VTUIComponent;IILjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lnet/veritran/component/VTInputText;->vtInputTextView:Lnet/veritran/component/view/VTTextInterface;

    .line 188
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lnet/veritran/component/VTInputText;->isCurrencyView:Z

    .line 190
    const-string v1, "VTInputTextComponent"

    const-string v2, "It uses currency View: %d - %d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v5, v6

    const/4 v6, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v5, v6

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 180
    .end local v3    # "decimalPart":I
    .end local v4    # "wholePart":I
    .end local v11    # "m":Ljava/util/regex/Matcher;
    .restart local v10    # "inputMask":Ljava/lang/String;
    :cond_4
    const-string v10, ""

    goto :goto_3

    .line 194
    .end local v10    # "inputMask":Ljava/lang/String;
    .restart local v11    # "m":Ljava/util/regex/Matcher;
    :cond_5
    new-instance v1, Lnet/veritran/component/view/VTInputTextView;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lnet/veritran/component/view/VTInputTextView;-><init>(Lnet/veritran/component/VTUIComponent;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lnet/veritran/component/VTInputText;->vtInputTextView:Lnet/veritran/component/view/VTTextInterface;

    .line 195
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lnet/veritran/component/VTInputText;->isCurrencyView:Z

    .line 197
    const-string v1, "VTInputTextComponent"

    const-string v2, "It\'s does not use currency View"

    invoke-static {v1, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method public keepStatusesToBundle()Z
    .locals 1

    .prologue
    .line 1188
    const/4 v0, 0x1

    return v0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 1108
    iget-boolean v0, p0, Lnet/veritran/component/VTInputText;->isInstantiationTime:Z

    if-nez v0, :cond_0

    .line 1109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/veritran/component/VTInputText;->isInputPostInstEdited:Z

    .line 1111
    :cond_0
    iget-boolean v0, p0, Lnet/veritran/component/VTInputText;->haveHint:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lnet/veritran/component/VTInputText;->isPinType:Z

    if-nez v0, :cond_1

    .line 1112
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 1113
    invoke-virtual {p0}, Lnet/veritran/component/VTInputText;->getActivity()Lnet/veritran/VTCommonActivity;

    move-result-object v1

    iget-object v0, p0, Lnet/veritran/component/VTInputText;->vtInputTextView:Lnet/veritran/component/view/VTTextInterface;

    check-cast v0, Lnet/veritran/component/view/VTInputTextView;

    iget-object v2, p0, Lnet/veritran/component/VTInputText;->hintFontSize:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lnet/veritran/VTCommonActivity;->setTextSize(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 1114
    iget-object v0, p0, Lnet/veritran/component/VTInputText;->vtInputTextView:Lnet/veritran/component/view/VTTextInterface;

    check-cast v0, Lnet/veritran/component/view/VTInputTextView;

    iget-object v1, p0, Lnet/veritran/component/VTInputText;->hintFontFamily:Ljava/lang/String;

    iget-object v2, p0, Lnet/veritran/component/VTInputText;->hintFontStyle:Ljava/lang/String;

    iget-object v3, p0, Lnet/veritran/component/VTInputText;->hintFontWeight:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lnet/veritran/utils/VTFontHelper;->setTextFamily(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1120
    :cond_1
    :goto_0
    return-void

    .line 1115
    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    iget v0, p0, Lnet/veritran/component/VTInputText;->lengthBeforeChange:I

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lnet/veritran/component/VTInputText;->isPinType:Z

    if-nez v0, :cond_1

    .line 1116
    invoke-virtual {p0}, Lnet/veritran/component/VTInputText;->getActivity()Lnet/veritran/VTCommonActivity;

    move-result-object v1

    iget-object v0, p0, Lnet/veritran/component/VTInputText;->vtInputTextView:Lnet/veritran/component/view/VTTextInterface;

    check-cast v0, Lnet/veritran/component/view/VTInputTextView;

    iget-object v2, p0, Lnet/veritran/component/VTInputText;->fontSize:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lnet/veritran/VTCommonActivity;->setTextSize(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 1117
    iget-object v0, p0, Lnet/veritran/component/VTInputText;->vtInputTextView:Lnet/veritran/component/view/VTTextInterface;

    check-cast v0, Lnet/veritran/component/view/VTInputTextView;

    iget-object v1, p0, Lnet/veritran/component/VTInputText;->fontFamily:Ljava/lang/String;

    iget-object v2, p0, Lnet/veritran/component/VTInputText;->fontStyle:Ljava/lang/String;

    iget-object v3, p0, Lnet/veritran/component/VTInputText;->fontWeight:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lnet/veritran/utils/VTFontHelper;->setTextFamily(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public restoreStatusFromBundle(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 1202
    iget-object v1, p0, Lnet/veritran/component/VTInputText;->vtInputTextView:Lnet/veritran/component/view/VTTextInterface;

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isFocusable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1203
    const-string v1, "focused"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1204
    iget-object v1, p0, Lnet/veritran/component/VTInputText;->vtInputTextView:Lnet/veritran/component/view/VTTextInterface;

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 1205
    invoke-virtual {p0}, Lnet/veritran/component/VTInputText;->getActivity()Lnet/veritran/VTCommonActivity;

    move-result-object v1

    const-string v2, "input_method"

    .line 1206
    invoke-virtual {v1, v2}, Lnet/veritran/VTCommonActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1207
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lnet/veritran/component/VTInputText;->vtInputTextView:Lnet/veritran/component/view/VTTextInterface;

    check-cast v1, Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 1210
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return-void
.end method

.method public saveStatusToBundle(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 1194
    iget-object v0, p0, Lnet/veritran/component/VTInputText;->vtInputTextView:Lnet/veritran/component/view/VTTextInterface;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1195
    const-string v0, "focused"

    iget-object v1, p0, Lnet/veritran/component/VTInputText;->vtInputTextView:Lnet/veritran/component/view/VTTextInterface;

    invoke-interface {v1}, Lnet/veritran/component/view/VTTextInterface;->isFocused()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1197
    :cond_0
    return-void
.end method

.method public setRetrievingFromBundle(Z)V
    .locals 0
    .param p1, "retrieving"    # Z

    .prologue
    .line 1183
    iput-boolean p1, p0, Lnet/veritran/component/VTInputText;->isRetrievingFromBundle:Z

    .line 1184
    return-void
.end method

.method public supportEvents()Z
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x1

    return v0
.end method

.method public updateAutoDumpBackground()V
    .locals 4

    .prologue
    .line 1098
    iget-object v0, p0, Lnet/veritran/component/VTInputText;->h:Landroid/os/Handler;

    iget-object v1, p0, Lnet/veritran/component/VTInputText;->r:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1099
    return-void
.end method

.method public validateTextLength(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "displayName"    # Ljava/lang/String;

    .prologue
    .line 1152
    iget v0, p0, Lnet/veritran/component/VTInputText;->minLength:I

    if-ltz v0, :cond_1

    iget-object v0, p0, Lnet/veritran/component/VTInputText;->maskHandler:Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/veritran/component/VTInputText;->maskHandler:Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;

    .line 1153
    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;->getEnteredText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_0
    iget v1, p0, Lnet/veritran/component/VTInputText;->minLength:I

    if-ge v0, v1, :cond_1

    .line 1157
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getResourcesLoader()Lnet/veritran/vtuserapplication/utils/ResourcesLoaderInterface;

    move-result-object v0

    const-string v1, ""

    const-string v2, "appFieldMustContainAtLeastCharacters"

    invoke-interface {v0, v1, v2}, Lnet/veritran/vtuserapplication/utils/ResourcesLoaderInterface;->getLanguageResource(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "__1__"

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "__2__"

    iget v2, p0, Lnet/veritran/component/VTInputText;->minLength:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1159
    :goto_1
    return-object v0

    .line 1153
    :cond_0
    iget-object v0, p0, Lnet/veritran/component/VTInputText;->vtInputTextView:Lnet/veritran/component/view/VTTextInterface;

    invoke-interface {v0}, Lnet/veritran/component/view/VTTextInterface;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0

    .line 1159
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
