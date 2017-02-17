.class Lnet/veritran/component/VTInputText$2;
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
    .line 575
    iput-object p1, p0, Lnet/veritran/component/VTInputText$2;->this$0:Lnet/veritran/component/VTInputText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 17
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "dest"    # Landroid/text/Spanned;
    .param p5, "dstart"    # I
    .param p6, "dend"    # I

    .prologue
    .line 578
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v11

    invoke-virtual {v11}, Lnet/veritran/vtuserapplication/model/Model;->restartSessionTimeout()V

    .line 579
    const-string v11, "VTInputTextComponent"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "filter(source:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ",start:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ",end:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ",dest:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p4

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ",dstart:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p5

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ",dend:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p6

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 582
    .local v3, "data":Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v11

    if-nez v11, :cond_2

    if-nez p2, :cond_2

    if-nez p3, :cond_2

    if-nez p5, :cond_2

    if-nez p6, :cond_2

    .line 583
    move-object/from16 v0, p0

    iget-object v11, v0, Lnet/veritran/component/VTInputText$2;->this$0:Lnet/veritran/component/VTInputText;

    # getter for: Lnet/veritran/component/VTInputText;->maskHandler:Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;
    invoke-static {v11}, Lnet/veritran/component/VTInputText;->access$100(Lnet/veritran/component/VTInputText;)Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;

    move-result-object v11

    invoke-virtual {v11}, Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;->getEnteredText()Ljava/lang/String;

    move-result-object v9

    .line 584
    .local v9, "prevText":Ljava/lang/String;
    const/4 v6, 0x0

    .line 585
    .local v6, "maskMinLength":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lnet/veritran/component/VTInputText$2;->this$0:Lnet/veritran/component/VTInputText;

    # getter for: Lnet/veritran/component/VTInputText;->maskHandler:Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;
    invoke-static {v11}, Lnet/veritran/component/VTInputText;->access$100(Lnet/veritran/component/VTInputText;)Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    const-class v12, Lnet/veritran/vtuserapplication/ui/maskhandler/DecimalMaskHandler;

    if-ne v11, v12, :cond_0

    .line 586
    const/4 v6, 0x2

    .line 588
    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lnet/veritran/component/VTInputText$2;->this$0:Lnet/veritran/component/VTInputText;

    # getter for: Lnet/veritran/component/VTInputText;->maskHandler:Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;
    invoke-static {v11}, Lnet/veritran/component/VTInputText;->access$100(Lnet/veritran/component/VTInputText;)Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;

    move-result-object v11

    invoke-virtual {v11}, Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;->getEnteredText()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-le v11, v6, :cond_1

    .line 589
    const-string v11, "VTInputTextComponent"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "massive deleting="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lnet/veritran/component/VTInputText$2;->this$0:Lnet/veritran/component/VTInputText;

    # getter for: Lnet/veritran/component/VTInputText;->maskHandler:Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;
    invoke-static {v13}, Lnet/veritran/component/VTInputText;->access$100(Lnet/veritran/component/VTInputText;)Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;

    move-result-object v13

    invoke-virtual {v13}, Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;->getEnteredText()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    move-object/from16 v0, p0

    iget-object v11, v0, Lnet/veritran/component/VTInputText$2;->this$0:Lnet/veritran/component/VTInputText;

    # getter for: Lnet/veritran/component/VTInputText;->maskHandler:Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;
    invoke-static {v11}, Lnet/veritran/component/VTInputText;->access$100(Lnet/veritran/component/VTInputText;)Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;

    move-result-object v11

    invoke-virtual {v11}, Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;->deleteChar()Z

    .line 591
    move-object/from16 v0, p0

    iget-object v11, v0, Lnet/veritran/component/VTInputText$2;->this$0:Lnet/veritran/component/VTInputText;

    # getter for: Lnet/veritran/component/VTInputText;->maskHandler:Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;
    invoke-static {v11}, Lnet/veritran/component/VTInputText;->access$100(Lnet/veritran/component/VTInputText;)Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;

    move-result-object v11

    invoke-virtual {v11}, Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;->getEnteredText()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 592
    const-string v11, "VTInputTextComponent"

    const-string v12, "Breaking out!"

    invoke-static {v11, v12}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lnet/veritran/component/VTInputText$2;->this$0:Lnet/veritran/component/VTInputText;

    invoke-virtual {v11}, Lnet/veritran/component/VTInputText;->updateAutoDumpBackground()V

    .line 597
    const-string v11, ""

    .line 646
    .end local v6    # "maskMinLength":I
    .end local v9    # "prevText":Ljava/lang/String;
    :goto_0
    return-object v11

    .line 599
    :cond_2
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v11

    if-nez v11, :cond_3

    add-int/lit8 v11, p6, -0x1

    move/from16 v0, p5

    if-ne v0, v11, :cond_3

    .line 600
    move-object/from16 v0, p0

    iget-object v11, v0, Lnet/veritran/component/VTInputText$2;->this$0:Lnet/veritran/component/VTInputText;

    # getter for: Lnet/veritran/component/VTInputText;->maskHandler:Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;
    invoke-static {v11}, Lnet/veritran/component/VTInputText;->access$100(Lnet/veritran/component/VTInputText;)Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;

    move-result-object v11

    invoke-virtual {v11}, Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;->deleteChar()Z

    .line 601
    move-object/from16 v0, p0

    iget-object v11, v0, Lnet/veritran/component/VTInputText$2;->this$0:Lnet/veritran/component/VTInputText;

    # getter for: Lnet/veritran/component/VTInputText;->vtInputTextView:Lnet/veritran/component/view/VTTextInterface;
    invoke-static {v11}, Lnet/veritran/component/VTInputText;->access$000(Lnet/veritran/component/VTInputText;)Lnet/veritran/component/view/VTTextInterface;

    move-result-object v11

    const/4 v12, 0x0

    new-array v12, v12, [Landroid/text/InputFilter;

    invoke-interface {v11, v12}, Lnet/veritran/component/view/VTTextInterface;->setFilters([Landroid/text/InputFilter;)V

    .line 602
    move-object/from16 v0, p0

    iget-object v11, v0, Lnet/veritran/component/VTInputText$2;->this$0:Lnet/veritran/component/VTInputText;

    # getter for: Lnet/veritran/component/VTInputText;->vtInputTextView:Lnet/veritran/component/view/VTTextInterface;
    invoke-static {v11}, Lnet/veritran/component/VTInputText;->access$000(Lnet/veritran/component/VTInputText;)Lnet/veritran/component/view/VTTextInterface;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lnet/veritran/component/VTInputText$2;->this$0:Lnet/veritran/component/VTInputText;

    # getter for: Lnet/veritran/component/VTInputText;->maskHandler:Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;
    invoke-static {v12}, Lnet/veritran/component/VTInputText;->access$100(Lnet/veritran/component/VTInputText;)Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;

    move-result-object v12

    invoke-virtual {v12}, Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;->getVisibleText()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Lnet/veritran/component/view/VTTextInterface;->setText(Ljava/lang/CharSequence;)V

    .line 603
    move-object/from16 v0, p0

    iget-object v11, v0, Lnet/veritran/component/VTInputText$2;->this$0:Lnet/veritran/component/VTInputText;

    # getter for: Lnet/veritran/component/VTInputText;->vtInputTextView:Lnet/veritran/component/view/VTTextInterface;
    invoke-static {v11}, Lnet/veritran/component/VTInputText;->access$000(Lnet/veritran/component/VTInputText;)Lnet/veritran/component/view/VTTextInterface;

    move-result-object v11

    const/4 v12, 0x1

    new-array v12, v12, [Landroid/text/InputFilter;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/veritran/component/VTInputText$2;->this$0:Lnet/veritran/component/VTInputText;

    iget-object v14, v14, Lnet/veritran/component/VTInputText;->filter:Landroid/text/InputFilter;

    aput-object v14, v12, v13

    invoke-interface {v11, v12}, Lnet/veritran/component/view/VTTextInterface;->setFilters([Landroid/text/InputFilter;)V

    .line 604
    move-object/from16 v0, p0

    iget-object v11, v0, Lnet/veritran/component/VTInputText$2;->this$0:Lnet/veritran/component/VTInputText;

    # getter for: Lnet/veritran/component/VTInputText;->vtInputTextView:Lnet/veritran/component/view/VTTextInterface;
    invoke-static {v11}, Lnet/veritran/component/VTInputText;->access$000(Lnet/veritran/component/VTInputText;)Lnet/veritran/component/view/VTTextInterface;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Lnet/veritran/component/view/VTTextInterface;->setCursorVisible(Z)V

    .line 605
    move-object/from16 v0, p0

    iget-object v11, v0, Lnet/veritran/component/VTInputText$2;->this$0:Lnet/veritran/component/VTInputText;

    # getter for: Lnet/veritran/component/VTInputText;->vtInputTextView:Lnet/veritran/component/view/VTTextInterface;
    invoke-static {v11}, Lnet/veritran/component/VTInputText;->access$000(Lnet/veritran/component/VTInputText;)Lnet/veritran/component/view/VTTextInterface;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lnet/veritran/component/VTInputText$2;->this$0:Lnet/veritran/component/VTInputText;

    # getter for: Lnet/veritran/component/VTInputText;->vtInputTextView:Lnet/veritran/component/view/VTTextInterface;
    invoke-static {v12}, Lnet/veritran/component/VTInputText;->access$000(Lnet/veritran/component/VTInputText;)Lnet/veritran/component/view/VTTextInterface;

    move-result-object v12

    invoke-interface {v12}, Lnet/veritran/component/view/VTTextInterface;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-interface {v12}, Landroid/text/Editable;->length()I

    move-result v12

    invoke-interface {v11, v12}, Lnet/veritran/component/view/VTTextInterface;->setSelection(I)V

    .line 606
    move-object/from16 v0, p0

    iget-object v11, v0, Lnet/veritran/component/VTInputText$2;->this$0:Lnet/veritran/component/VTInputText;

    invoke-virtual {v11}, Lnet/veritran/component/VTInputText;->updateAutoDumpBackground()V

    .line 607
    const-string v11, ""

    goto/16 :goto_0

    .line 610
    :cond_3
    const/4 v5, 0x1

    .line 612
    .local v5, "isValid":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v4, v11, :cond_4

    .line 614
    move-object/from16 v0, p0

    iget-object v11, v0, Lnet/veritran/component/VTInputText$2;->this$0:Lnet/veritran/component/VTInputText;

    iget-object v11, v11, Lnet/veritran/component/VTInputText;->validChars:Ljava/lang/String;

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6

    move-object/from16 v0, p0

    iget-object v11, v0, Lnet/veritran/component/VTInputText$2;->this$0:Lnet/veritran/component/VTInputText;

    iget-object v11, v11, Lnet/veritran/component/VTInputText;->validChars:Ljava/lang/String;

    add-int/lit8 v12, v4, 0x1

    invoke-virtual {v3, v4, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 615
    const/4 v5, 0x0

    .line 620
    :cond_4
    if-eqz v5, :cond_8

    .line 621
    const-string v10, ""

    .line 623
    .local v10, "sendText":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v12

    array-length v13, v12

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v13, :cond_7

    aget-char v2, v12, v11

    .line 624
    .local v2, "c":C
    const-string v14, "VTInputTextComponent"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "adding char: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/veritran/component/VTInputText$2;->this$0:Lnet/veritran/component/VTInputText;

    # getter for: Lnet/veritran/component/VTInputText;->maskHandler:Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;
    invoke-static {v14}, Lnet/veritran/component/VTInputText;->access$100(Lnet/veritran/component/VTInputText;)Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;

    move-result-object v14

    invoke-virtual {v14}, Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;->getVisibleText()Ljava/lang/String;

    move-result-object v8

    .line 626
    .local v8, "prev":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/veritran/component/VTInputText$2;->this$0:Lnet/veritran/component/VTInputText;

    # getter for: Lnet/veritran/component/VTInputText;->maskHandler:Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;
    invoke-static {v14}, Lnet/veritran/component/VTInputText;->access$100(Lnet/veritran/component/VTInputText;)Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;

    move-result-object v14

    invoke-virtual {v14, v2}, Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;->addChar(I)Z

    .line 627
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/veritran/component/VTInputText$2;->this$0:Lnet/veritran/component/VTInputText;

    # getter for: Lnet/veritran/component/VTInputText;->maskHandler:Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;
    invoke-static {v14}, Lnet/veritran/component/VTInputText;->access$100(Lnet/veritran/component/VTInputText;)Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;

    move-result-object v14

    invoke-virtual {v14}, Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;->getVisibleText()Ljava/lang/String;

    move-result-object v7

    .line 628
    .local v7, "post":Ljava/lang/String;
    const-string v14, "VTInputTextComponent"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "maskHandler.getEnteredText: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTInputText$2;->this$0:Lnet/veritran/component/VTInputText;

    move-object/from16 v16, v0

    # getter for: Lnet/veritran/component/VTInputText;->maskHandler:Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;
    invoke-static/range {v16 .. v16}, Lnet/veritran/component/VTInputText;->access$100(Lnet/veritran/component/VTInputText;)Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;->getEnteredText()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    const-string v14, "VTInputTextComponent"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "maskHandler.getVisibleText: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTInputText$2;->this$0:Lnet/veritran/component/VTInputText;

    move-object/from16 v16, v0

    # getter for: Lnet/veritran/component/VTInputText;->maskHandler:Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;
    invoke-static/range {v16 .. v16}, Lnet/veritran/component/VTInputText;->access$100(Lnet/veritran/component/VTInputText;)Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;->getVisibleText()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    const-string v14, "VTInputTextComponent"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "maskHandler.getVisibleText prev: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    const-string v14, "VTInputTextComponent"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "maskHandler.getVisibleText post: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v15

    if-ge v14, v15, :cond_5

    .line 633
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v7, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 635
    :cond_5
    const-string v14, "VTInputTextComponent"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "maskHandler.getVisibleText sendText: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_2

    .line 612
    .end local v2    # "c":C
    .end local v7    # "post":Ljava/lang/String;
    .end local v8    # "prev":Ljava/lang/String;
    .end local v10    # "sendText":Ljava/lang/String;
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 637
    .restart local v10    # "sendText":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v11, v0, Lnet/veritran/component/VTInputText$2;->this$0:Lnet/veritran/component/VTInputText;

    # getter for: Lnet/veritran/component/VTInputText;->vtInputTextView:Lnet/veritran/component/view/VTTextInterface;
    invoke-static {v11}, Lnet/veritran/component/VTInputText;->access$000(Lnet/veritran/component/VTInputText;)Lnet/veritran/component/view/VTTextInterface;

    move-result-object v11

    const/4 v12, 0x0

    new-array v12, v12, [Landroid/text/InputFilter;

    invoke-interface {v11, v12}, Lnet/veritran/component/view/VTTextInterface;->setFilters([Landroid/text/InputFilter;)V

    .line 638
    move-object/from16 v0, p0

    iget-object v11, v0, Lnet/veritran/component/VTInputText$2;->this$0:Lnet/veritran/component/VTInputText;

    # getter for: Lnet/veritran/component/VTInputText;->vtInputTextView:Lnet/veritran/component/view/VTTextInterface;
    invoke-static {v11}, Lnet/veritran/component/VTInputText;->access$000(Lnet/veritran/component/VTInputText;)Lnet/veritran/component/view/VTTextInterface;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lnet/veritran/component/VTInputText$2;->this$0:Lnet/veritran/component/VTInputText;

    # getter for: Lnet/veritran/component/VTInputText;->maskHandler:Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;
    invoke-static {v12}, Lnet/veritran/component/VTInputText;->access$100(Lnet/veritran/component/VTInputText;)Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;

    move-result-object v12

    invoke-virtual {v12}, Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;->getVisibleText()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Lnet/veritran/component/view/VTTextInterface;->setText(Ljava/lang/CharSequence;)V

    .line 639
    move-object/from16 v0, p0

    iget-object v11, v0, Lnet/veritran/component/VTInputText$2;->this$0:Lnet/veritran/component/VTInputText;

    # getter for: Lnet/veritran/component/VTInputText;->vtInputTextView:Lnet/veritran/component/view/VTTextInterface;
    invoke-static {v11}, Lnet/veritran/component/VTInputText;->access$000(Lnet/veritran/component/VTInputText;)Lnet/veritran/component/view/VTTextInterface;

    move-result-object v11

    const/4 v12, 0x1

    new-array v12, v12, [Landroid/text/InputFilter;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/veritran/component/VTInputText$2;->this$0:Lnet/veritran/component/VTInputText;

    iget-object v14, v14, Lnet/veritran/component/VTInputText;->filter:Landroid/text/InputFilter;

    aput-object v14, v12, v13

    invoke-interface {v11, v12}, Lnet/veritran/component/view/VTTextInterface;->setFilters([Landroid/text/InputFilter;)V

    .line 640
    move-object/from16 v0, p0

    iget-object v11, v0, Lnet/veritran/component/VTInputText$2;->this$0:Lnet/veritran/component/VTInputText;

    # getter for: Lnet/veritran/component/VTInputText;->vtInputTextView:Lnet/veritran/component/view/VTTextInterface;
    invoke-static {v11}, Lnet/veritran/component/VTInputText;->access$000(Lnet/veritran/component/VTInputText;)Lnet/veritran/component/view/VTTextInterface;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Lnet/veritran/component/view/VTTextInterface;->setCursorVisible(Z)V

    .line 641
    move-object/from16 v0, p0

    iget-object v11, v0, Lnet/veritran/component/VTInputText$2;->this$0:Lnet/veritran/component/VTInputText;

    # getter for: Lnet/veritran/component/VTInputText;->vtInputTextView:Lnet/veritran/component/view/VTTextInterface;
    invoke-static {v11}, Lnet/veritran/component/VTInputText;->access$000(Lnet/veritran/component/VTInputText;)Lnet/veritran/component/view/VTTextInterface;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lnet/veritran/component/VTInputText$2;->this$0:Lnet/veritran/component/VTInputText;

    # getter for: Lnet/veritran/component/VTInputText;->vtInputTextView:Lnet/veritran/component/view/VTTextInterface;
    invoke-static {v12}, Lnet/veritran/component/VTInputText;->access$000(Lnet/veritran/component/VTInputText;)Lnet/veritran/component/view/VTTextInterface;

    move-result-object v12

    invoke-interface {v12}, Lnet/veritran/component/view/VTTextInterface;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-interface {v12}, Landroid/text/Editable;->length()I

    move-result v12

    invoke-interface {v11, v12}, Lnet/veritran/component/view/VTTextInterface;->setSelection(I)V

    .line 642
    move-object/from16 v0, p0

    iget-object v11, v0, Lnet/veritran/component/VTInputText$2;->this$0:Lnet/veritran/component/VTInputText;

    invoke-virtual {v11}, Lnet/veritran/component/VTInputText;->updateAutoDumpBackground()V

    .line 643
    const-string v11, ""

    goto/16 :goto_0

    .line 645
    .end local v10    # "sendText":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v11, v0, Lnet/veritran/component/VTInputText$2;->this$0:Lnet/veritran/component/VTInputText;

    invoke-virtual {v11}, Lnet/veritran/component/VTInputText;->updateAutoDumpBackground()V

    .line 646
    const-string v11, ""

    goto/16 :goto_0
.end method
