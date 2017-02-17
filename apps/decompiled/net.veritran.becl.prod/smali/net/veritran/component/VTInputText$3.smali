.class Lnet/veritran/component/VTInputText$3;
.super Ljava/lang/Object;
.source "VTInputText.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/veritran/component/VTInputText;->initInput()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/veritran/component/VTInputText;


# direct methods
.method constructor <init>(Lnet/veritran/component/VTInputText;)V
    .locals 0
    .param p1, "this$0"    # Lnet/veritran/component/VTInputText;

    .prologue
    .line 651
    iput-object p1, p0, Lnet/veritran/component/VTInputText$3;->this$0:Lnet/veritran/component/VTInputText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 8
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "dest"    # Landroid/text/Spanned;
    .param p5, "dstart"    # I
    .param p6, "dend"    # I

    .prologue
    .line 655
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v5

    invoke-virtual {v5}, Lnet/veritran/vtuserapplication/model/Model;->restartSessionTimeout()V

    .line 656
    const-string v5, "VTInputTextComponent"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "filter(source:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",start:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",end:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",dest:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",dstart:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",dend:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 659
    .local v0, "data":Ljava/lang/String;
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_1

    if-nez p2, :cond_1

    if-nez p3, :cond_1

    if-nez p5, :cond_1

    if-nez p6, :cond_1

    .line 660
    :goto_0
    iget-object v5, p0, Lnet/veritran/component/VTInputText$3;->this$0:Lnet/veritran/component/VTInputText;

    # getter for: Lnet/veritran/component/VTInputText;->maskHandler:Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;
    invoke-static {v5}, Lnet/veritran/component/VTInputText;->access$100(Lnet/veritran/component/VTInputText;)Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;

    move-result-object v5

    invoke-virtual {v5}, Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;->getEnteredText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 661
    iget-object v5, p0, Lnet/veritran/component/VTInputText$3;->this$0:Lnet/veritran/component/VTInputText;

    # getter for: Lnet/veritran/component/VTInputText;->maskHandler:Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;
    invoke-static {v5}, Lnet/veritran/component/VTInputText;->access$100(Lnet/veritran/component/VTInputText;)Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;

    move-result-object v5

    invoke-virtual {v5}, Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;->deleteChar()Z

    goto :goto_0

    .line 663
    :cond_0
    iget-object v5, p0, Lnet/veritran/component/VTInputText$3;->this$0:Lnet/veritran/component/VTInputText;

    invoke-virtual {v5}, Lnet/veritran/component/VTInputText;->updateAutoDumpBackground()V

    .line 664
    const-string v5, ""

    .line 704
    :goto_1
    return-object v5

    .line 666
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_2

    add-int/lit8 v5, p6, -0x1

    if-ne p5, v5, :cond_2

    .line 667
    iget-object v5, p0, Lnet/veritran/component/VTInputText$3;->this$0:Lnet/veritran/component/VTInputText;

    # getter for: Lnet/veritran/component/VTInputText;->maskHandler:Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;
    invoke-static {v5}, Lnet/veritran/component/VTInputText;->access$100(Lnet/veritran/component/VTInputText;)Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;

    move-result-object v5

    invoke-virtual {v5}, Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;->deleteChar()Z

    .line 668
    iget-object v5, p0, Lnet/veritran/component/VTInputText$3;->this$0:Lnet/veritran/component/VTInputText;

    invoke-virtual {v5}, Lnet/veritran/component/VTInputText;->updateAutoDumpBackground()V

    .line 669
    const-string v5, ""

    goto :goto_1

    .line 672
    :cond_2
    const/4 v3, 0x1

    .line 674
    .local v3, "isValid":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 676
    iget-object v5, p0, Lnet/veritran/component/VTInputText$3;->this$0:Lnet/veritran/component/VTInputText;

    iget-object v5, v5, Lnet/veritran/component/VTInputText;->validChars:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lnet/veritran/component/VTInputText$3;->this$0:Lnet/veritran/component/VTInputText;

    iget-object v5, v5, Lnet/veritran/component/VTInputText;->validChars:Ljava/lang/String;

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v0, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 677
    const/4 v3, 0x0

    .line 682
    :cond_3
    if-eqz v3, :cond_9

    .line 683
    iget-object v5, p0, Lnet/veritran/component/VTInputText$3;->this$0:Lnet/veritran/component/VTInputText;

    # getter for: Lnet/veritran/component/VTInputText;->maskHandler:Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;
    invoke-static {v5}, Lnet/veritran/component/VTInputText;->access$100(Lnet/veritran/component/VTInputText;)Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;

    move-result-object v5

    invoke-virtual {v5}, Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;->patternLen()I

    move-result v4

    .line 684
    .local v4, "maskLen":I
    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v5

    if-le v4, v5, :cond_8

    .line 685
    iget-object v5, p0, Lnet/veritran/component/VTInputText$3;->this$0:Lnet/veritran/component/VTInputText;

    # getter for: Lnet/veritran/component/VTInputText;->maskHandler:Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;
    invoke-static {v5}, Lnet/veritran/component/VTInputText;->access$100(Lnet/veritran/component/VTInputText;)Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;

    move-result-object v5

    invoke-virtual {v5}, Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;->getEnteredText()Ljava/lang/String;

    move-result-object v1

    .line 686
    .local v1, "enteredText":Ljava/lang/String;
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v4, :cond_5

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 674
    .end local v1    # "enteredText":Ljava/lang/String;
    .end local v4    # "maskLen":I
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 689
    .restart local v1    # "enteredText":Ljava/lang/String;
    .restart local v4    # "maskLen":I
    :cond_5
    const/4 v2, 0x0

    :goto_4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_6

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 692
    :cond_6
    const/4 v2, 0x0

    :goto_5
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ge v2, v5, :cond_7

    .line 693
    iget-object v5, p0, Lnet/veritran/component/VTInputText$3;->this$0:Lnet/veritran/component/VTInputText;

    # getter for: Lnet/veritran/component/VTInputText;->maskHandler:Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;
    invoke-static {v5}, Lnet/veritran/component/VTInputText;->access$100(Lnet/veritran/component/VTInputText;)Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;

    move-result-object v5

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;->addChar(I)Z

    .line 692
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 695
    :cond_7
    const-string v5, "VTInputTextComponent"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "maskHandler.getEnteredText: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lnet/veritran/component/VTInputText$3;->this$0:Lnet/veritran/component/VTInputText;

    # getter for: Lnet/veritran/component/VTInputText;->maskHandler:Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;
    invoke-static {v7}, Lnet/veritran/component/VTInputText;->access$100(Lnet/veritran/component/VTInputText;)Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;

    move-result-object v7

    invoke-virtual {v7}, Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;->getEnteredText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    iget-object v5, p0, Lnet/veritran/component/VTInputText$3;->this$0:Lnet/veritran/component/VTInputText;

    invoke-virtual {v5}, Lnet/veritran/component/VTInputText;->updateAutoDumpBackground()V

    .line 697
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 699
    .end local v1    # "enteredText":Ljava/lang/String;
    :cond_8
    iget-object v5, p0, Lnet/veritran/component/VTInputText$3;->this$0:Lnet/veritran/component/VTInputText;

    invoke-virtual {v5}, Lnet/veritran/component/VTInputText;->updateAutoDumpBackground()V

    .line 700
    const-string v5, ""

    goto/16 :goto_1

    .line 703
    .end local v4    # "maskLen":I
    :cond_9
    iget-object v5, p0, Lnet/veritran/component/VTInputText$3;->this$0:Lnet/veritran/component/VTInputText;

    invoke-virtual {v5}, Lnet/veritran/component/VTInputText;->updateAutoDumpBackground()V

    .line 704
    const-string v5, ""

    goto/16 :goto_1
.end method
