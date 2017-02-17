.class Lnet/veritran/component/view/VTInputCurrencyTextView$1;
.super Ljava/lang/Object;
.source "VTInputCurrencyTextView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/veritran/component/view/VTInputCurrencyTextView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/veritran/component/view/VTInputCurrencyTextView;


# direct methods
.method constructor <init>(Lnet/veritran/component/view/VTInputCurrencyTextView;)V
    .locals 0
    .param p1, "this$0"    # Lnet/veritran/component/view/VTInputCurrencyTextView;

    .prologue
    .line 49
    iput-object p1, p0, Lnet/veritran/component/view/VTInputCurrencyTextView$1;->this$0:Lnet/veritran/component/view/VTInputCurrencyTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 110
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 105
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 12
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 54
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "^0|([1-9]\\d{0,2}("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lnet/veritran/component/view/VTInputCurrencyTextView$1;->this$0:Lnet/veritran/component/view/VTInputCurrencyTextView;

    # getter for: Lnet/veritran/component/view/VTInputCurrencyTextView;->thousandSeparator:Ljava/lang/String;
    invoke-static {v9}, Lnet/veritran/component/view/VTInputCurrencyTextView;->access$000(Lnet/veritran/component/view/VTInputCurrencyTextView;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\\d{3})*)$"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 55
    .local v4, "maskNoDecimal":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "^(0|([1-9]\\d{0,2}("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lnet/veritran/component/view/VTInputCurrencyTextView$1;->this$0:Lnet/veritran/component/view/VTInputCurrencyTextView;

    # getter for: Lnet/veritran/component/view/VTInputCurrencyTextView;->thousandSeparator:Ljava/lang/String;
    invoke-static {v9}, Lnet/veritran/component/view/VTInputCurrencyTextView;->access$000(Lnet/veritran/component/view/VTInputCurrencyTextView;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\\d{3})*))("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lnet/veritran/component/view/VTInputCurrencyTextView$1;->this$0:Lnet/veritran/component/view/VTInputCurrencyTextView;

    # getter for: Lnet/veritran/component/view/VTInputCurrencyTextView;->decimalSeparator:Ljava/lang/String;
    invoke-static {v9}, Lnet/veritran/component/view/VTInputCurrencyTextView;->access$100(Lnet/veritran/component/view/VTInputCurrencyTextView;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\\d{"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lnet/veritran/component/view/VTInputCurrencyTextView$1;->this$0:Lnet/veritran/component/view/VTInputCurrencyTextView;

    # getter for: Lnet/veritran/component/view/VTInputCurrencyTextView;->decimalPart:I
    invoke-static {v9}, Lnet/veritran/component/view/VTInputCurrencyTextView;->access$200(Lnet/veritran/component/view/VTInputCurrencyTextView;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "})$"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 57
    .local v3, "maskDecimal":Ljava/lang/String;
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .line 59
    .local v7, "value":Ljava/lang/String;
    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 61
    iget-object v8, p0, Lnet/veritran/component/view/VTInputCurrencyTextView$1;->this$0:Lnet/veritran/component/view/VTInputCurrencyTextView;

    iget-object v8, v8, Lnet/veritran/component/view/VTInputCurrencyTextView;->component:Lnet/veritran/component/VTUIComponent;

    check-cast v8, Lnet/veritran/component/VTInputText;

    invoke-virtual {v8}, Lnet/veritran/component/VTInputText;->updateAutoDumpBackground()V

    .line 99
    :goto_0
    return-void

    .line 66
    :cond_0
    iget-object v8, p0, Lnet/veritran/component/view/VTInputCurrencyTextView$1;->this$0:Lnet/veritran/component/view/VTInputCurrencyTextView;

    # getter for: Lnet/veritran/component/view/VTInputCurrencyTextView;->decimalPart:I
    invoke-static {v8}, Lnet/veritran/component/view/VTInputCurrencyTextView;->access$200(Lnet/veritran/component/view/VTInputCurrencyTextView;)I

    move-result v8

    if-lez v8, :cond_1

    invoke-virtual {v7, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    :cond_1
    iget-object v8, p0, Lnet/veritran/component/view/VTInputCurrencyTextView$1;->this$0:Lnet/veritran/component/view/VTInputCurrencyTextView;

    # getter for: Lnet/veritran/component/view/VTInputCurrencyTextView;->decimalPart:I
    invoke-static {v8}, Lnet/veritran/component/view/VTInputCurrencyTextView;->access$200(Lnet/veritran/component/view/VTInputCurrencyTextView;)I

    move-result v8

    if-nez v8, :cond_8

    invoke-virtual {v7, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 68
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "[^\\d]"

    const-string v11, ""

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 69
    .local v6, "userInput":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    .local v0, "cashAmountBuilder":Ljava/lang/StringBuilder;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    iget-object v9, p0, Lnet/veritran/component/view/VTInputCurrencyTextView$1;->this$0:Lnet/veritran/component/view/VTInputCurrencyTextView;

    # getter for: Lnet/veritran/component/view/VTInputCurrencyTextView;->decimalPart:I
    invoke-static {v9}, Lnet/veritran/component/view/VTInputCurrencyTextView;->access$200(Lnet/veritran/component/view/VTInputCurrencyTextView;)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    if-le v8, v9, :cond_3

    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    const/16 v9, 0x30

    if-ne v8, v9, :cond_3

    .line 72
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 74
    :cond_3
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    iget-object v9, p0, Lnet/veritran/component/view/VTInputCurrencyTextView$1;->this$0:Lnet/veritran/component/view/VTInputCurrencyTextView;

    # getter for: Lnet/veritran/component/view/VTInputCurrencyTextView;->decimalPart:I
    invoke-static {v9}, Lnet/veritran/component/view/VTInputCurrencyTextView;->access$200(Lnet/veritran/component/view/VTInputCurrencyTextView;)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    if-ge v8, v9, :cond_4

    .line 75
    const/4 v8, 0x0

    const/16 v9, 0x30

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 77
    :cond_4
    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    iget-object v9, p0, Lnet/veritran/component/view/VTInputCurrencyTextView$1;->this$0:Lnet/veritran/component/view/VTInputCurrencyTextView;

    # getter for: Lnet/veritran/component/view/VTInputCurrencyTextView;->decimalPart:I
    invoke-static {v9}, Lnet/veritran/component/view/VTInputCurrencyTextView;->access$200(Lnet/veritran/component/view/VTInputCurrencyTextView;)I

    move-result v9

    iget-object v10, p0, Lnet/veritran/component/view/VTInputCurrencyTextView$1;->this$0:Lnet/veritran/component/view/VTInputCurrencyTextView;

    # getter for: Lnet/veritran/component/view/VTInputCurrencyTextView;->wholePart:I
    invoke-static {v10}, Lnet/veritran/component/view/VTInputCurrencyTextView;->access$300(Lnet/veritran/component/view/VTInputCurrencyTextView;)I

    move-result v10

    add-int/2addr v9, v10

    if-le v8, v9, :cond_5

    .line 78
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 81
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    iget-object v9, p0, Lnet/veritran/component/view/VTInputCurrencyTextView$1;->this$0:Lnet/veritran/component/view/VTInputCurrencyTextView;

    # getter for: Lnet/veritran/component/view/VTInputCurrencyTextView;->decimalPart:I
    invoke-static {v9}, Lnet/veritran/component/view/VTInputCurrencyTextView;->access$200(Lnet/veritran/component/view/VTInputCurrencyTextView;)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    sub-int/2addr v8, v9

    div-int/lit8 v5, v8, 0x3

    .line 82
    .local v5, "thousands":I
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    iget-object v9, p0, Lnet/veritran/component/view/VTInputCurrencyTextView$1;->this$0:Lnet/veritran/component/view/VTInputCurrencyTextView;

    # getter for: Lnet/veritran/component/view/VTInputCurrencyTextView;->decimalPart:I
    invoke-static {v9}, Lnet/veritran/component/view/VTInputCurrencyTextView;->access$200(Lnet/veritran/component/view/VTInputCurrencyTextView;)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    sub-int/2addr v8, v9

    rem-int/lit8 v8, v8, 0x3

    add-int/lit8 v1, v8, 0x1

    .line 84
    .local v1, "firstThousand":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4
    if-ge v2, v5, :cond_6

    .line 86
    iget-object v8, p0, Lnet/veritran/component/view/VTInputCurrencyTextView$1;->this$0:Lnet/veritran/component/view/VTInputCurrencyTextView;

    # getter for: Lnet/veritran/component/view/VTInputCurrencyTextView;->thousandSeparator:Ljava/lang/String;
    invoke-static {v8}, Lnet/veritran/component/view/VTInputCurrencyTextView;->access$000(Lnet/veritran/component/view/VTInputCurrencyTextView;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x3

    mul-int/2addr v8, v2

    add-int/2addr v8, v1

    iget-object v9, p0, Lnet/veritran/component/view/VTInputCurrencyTextView$1;->this$0:Lnet/veritran/component/view/VTInputCurrencyTextView;

    # getter for: Lnet/veritran/component/view/VTInputCurrencyTextView;->thousandSeparator:Ljava/lang/String;
    invoke-static {v9}, Lnet/veritran/component/view/VTInputCurrencyTextView;->access$000(Lnet/veritran/component/view/VTInputCurrencyTextView;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 89
    :cond_6
    iget-object v8, p0, Lnet/veritran/component/view/VTInputCurrencyTextView$1;->this$0:Lnet/veritran/component/view/VTInputCurrencyTextView;

    # getter for: Lnet/veritran/component/view/VTInputCurrencyTextView;->decimalPart:I
    invoke-static {v8}, Lnet/veritran/component/view/VTInputCurrencyTextView;->access$200(Lnet/veritran/component/view/VTInputCurrencyTextView;)I

    move-result v8

    if-lez v8, :cond_7

    .line 91
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    iget-object v9, p0, Lnet/veritran/component/view/VTInputCurrencyTextView$1;->this$0:Lnet/veritran/component/view/VTInputCurrencyTextView;

    # getter for: Lnet/veritran/component/view/VTInputCurrencyTextView;->decimalPart:I
    invoke-static {v9}, Lnet/veritran/component/view/VTInputCurrencyTextView;->access$200(Lnet/veritran/component/view/VTInputCurrencyTextView;)I

    move-result v9

    sub-int/2addr v8, v9

    iget-object v9, p0, Lnet/veritran/component/view/VTInputCurrencyTextView$1;->this$0:Lnet/veritran/component/view/VTInputCurrencyTextView;

    # getter for: Lnet/veritran/component/view/VTInputCurrencyTextView;->decimalSeparator:Ljava/lang/String;
    invoke-static {v9}, Lnet/veritran/component/view/VTInputCurrencyTextView;->access$100(Lnet/veritran/component/view/VTInputCurrencyTextView;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    :cond_7
    iget-object v8, p0, Lnet/veritran/component/view/VTInputCurrencyTextView$1;->this$0:Lnet/veritran/component/view/VTInputCurrencyTextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lnet/veritran/component/view/VTInputCurrencyTextView;->setTextKeepState(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v8, p0, Lnet/veritran/component/view/VTInputCurrencyTextView$1;->this$0:Lnet/veritran/component/view/VTInputCurrencyTextView;

    invoke-virtual {v8}, Lnet/veritran/component/view/VTInputCurrencyTextView;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-static {v8, v9}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 98
    .end local v0    # "cashAmountBuilder":Ljava/lang/StringBuilder;
    .end local v1    # "firstThousand":I
    .end local v2    # "i":I
    .end local v5    # "thousands":I
    .end local v6    # "userInput":Ljava/lang/String;
    :cond_8
    iget-object v8, p0, Lnet/veritran/component/view/VTInputCurrencyTextView$1;->this$0:Lnet/veritran/component/view/VTInputCurrencyTextView;

    iget-object v8, v8, Lnet/veritran/component/view/VTInputCurrencyTextView;->component:Lnet/veritran/component/VTUIComponent;

    check-cast v8, Lnet/veritran/component/VTInputText;

    invoke-virtual {v8}, Lnet/veritran/component/VTInputText;->updateAutoDumpBackground()V

    goto/16 :goto_0
.end method
