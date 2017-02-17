.class public Lnet/veritran/component/view/VTInputCurrencyTextView;
.super Lnet/veritran/component/view/VTInputTextView;
.source "VTInputCurrencyTextView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VTInputCurrencyTextView"


# instance fields
.field private decimalPart:I

.field private decimalSeparator:Ljava/lang/String;

.field private onBlur:Ljava/lang/String;

.field private onFocus:Ljava/lang/String;

.field private thousandSeparator:Ljava/lang/String;

.field private wholePart:I


# direct methods
.method public constructor <init>(Lnet/veritran/component/VTUIComponent;IILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "component"    # Lnet/veritran/component/VTUIComponent;
    .param p2, "decimalPart"    # I
    .param p3, "wholePart"    # I
    .param p4, "thousandSeparator"    # Ljava/lang/String;
    .param p5, "decimalSeparator"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lnet/veritran/component/view/VTInputTextView;-><init>(Lnet/veritran/component/VTUIComponent;)V

    .line 18
    const/4 v0, 0x2

    iput v0, p0, Lnet/veritran/component/view/VTInputCurrencyTextView;->decimalPart:I

    .line 19
    const/16 v0, 0xc

    iput v0, p0, Lnet/veritran/component/view/VTInputCurrencyTextView;->wholePart:I

    .line 21
    const-string v0, ","

    iput-object v0, p0, Lnet/veritran/component/view/VTInputCurrencyTextView;->thousandSeparator:Ljava/lang/String;

    .line 22
    const-string v0, "."

    iput-object v0, p0, Lnet/veritran/component/view/VTInputCurrencyTextView;->decimalSeparator:Ljava/lang/String;

    .line 31
    iput p2, p0, Lnet/veritran/component/view/VTInputCurrencyTextView;->decimalPart:I

    .line 32
    iput p3, p0, Lnet/veritran/component/view/VTInputCurrencyTextView;->wholePart:I

    .line 33
    iput-object p4, p0, Lnet/veritran/component/view/VTInputCurrencyTextView;->thousandSeparator:Ljava/lang/String;

    .line 34
    iput-object p5, p0, Lnet/veritran/component/view/VTInputCurrencyTextView;->decimalSeparator:Ljava/lang/String;

    .line 36
    invoke-direct {p0}, Lnet/veritran/component/view/VTInputCurrencyTextView;->init()V

    .line 37
    return-void
.end method

.method static synthetic access$000(Lnet/veritran/component/view/VTInputCurrencyTextView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lnet/veritran/component/view/VTInputCurrencyTextView;

    .prologue
    .line 14
    iget-object v0, p0, Lnet/veritran/component/view/VTInputCurrencyTextView;->thousandSeparator:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lnet/veritran/component/view/VTInputCurrencyTextView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lnet/veritran/component/view/VTInputCurrencyTextView;

    .prologue
    .line 14
    iget-object v0, p0, Lnet/veritran/component/view/VTInputCurrencyTextView;->decimalSeparator:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lnet/veritran/component/view/VTInputCurrencyTextView;)I
    .locals 1
    .param p0, "x0"    # Lnet/veritran/component/view/VTInputCurrencyTextView;

    .prologue
    .line 14
    iget v0, p0, Lnet/veritran/component/view/VTInputCurrencyTextView;->decimalPart:I

    return v0
.end method

.method static synthetic access$300(Lnet/veritran/component/view/VTInputCurrencyTextView;)I
    .locals 1
    .param p0, "x0"    # Lnet/veritran/component/view/VTInputCurrencyTextView;

    .prologue
    .line 14
    iget v0, p0, Lnet/veritran/component/view/VTInputCurrencyTextView;->wholePart:I

    return v0
.end method

.method private init()V
    .locals 1

    .prologue
    .line 47
    const v0, 0x80003

    invoke-virtual {p0, v0}, Lnet/veritran/component/view/VTInputCurrencyTextView;->setRawInputType(I)V

    .line 49
    new-instance v0, Lnet/veritran/component/view/VTInputCurrencyTextView$1;

    invoke-direct {v0, p0}, Lnet/veritran/component/view/VTInputCurrencyTextView$1;-><init>(Lnet/veritran/component/view/VTInputCurrencyTextView;)V

    invoke-virtual {p0, v0}, Lnet/veritran/component/view/VTInputCurrencyTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 112
    return-void
.end method


# virtual methods
.method public getEnteredText()Ljava/lang/String;
    .locals 4

    .prologue
    .line 116
    invoke-virtual {p0}, Lnet/veritran/component/view/VTInputCurrencyTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[^\\d]"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, "justNumbers":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lnet/veritran/component/view/VTInputCurrencyTextView;->decimalPart:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 122
    invoke-virtual {p0}, Lnet/veritran/component/view/VTInputCurrencyTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setFixedMargins(FFFF)V
    .locals 3
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 41
    const-string v0, "VTInputCurrencyTextView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFixedMargins("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public setFocusAndBlurActions(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "onFocus"    # Ljava/lang/String;
    .param p2, "onBlur"    # Ljava/lang/String;

    .prologue
    .line 126
    iput-object p1, p0, Lnet/veritran/component/view/VTInputCurrencyTextView;->onFocus:Ljava/lang/String;

    .line 127
    iput-object p2, p0, Lnet/veritran/component/view/VTInputCurrencyTextView;->onBlur:Ljava/lang/String;

    .line 128
    return-void
.end method
