.class Lnet/veritran/component/VTInputText$1$1;
.super Ljava/lang/Object;
.source "VTInputText.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/veritran/component/VTInputText$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/veritran/component/VTInputText$1;


# direct methods
.method constructor <init>(Lnet/veritran/component/VTInputText$1;)V
    .locals 0
    .param p1, "this$1"    # Lnet/veritran/component/VTInputText$1;

    .prologue
    .line 451
    iput-object p1, p0, Lnet/veritran/component/VTInputText$1$1;->this$1:Lnet/veritran/component/VTInputText$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 12
    .param p1, "view"    # Landroid/widget/DatePicker;
    .param p2, "year"    # I
    .param p3, "monthOfYear"    # I
    .param p4, "dayOfMonth"    # I

    .prologue
    .line 457
    new-instance v2, Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 458
    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    invoke-static {v7, v8}, Lnet/veritran/vtuserapplication/utils/VTStringUtils;->leftZeros(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, p3, 0x1

    .line 459
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    invoke-static {v7, v8}, Lnet/veritran/vtuserapplication/utils/VTStringUtils;->leftZeros(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 460
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x4

    invoke-static {v7, v8}, Lnet/veritran/vtuserapplication/utils/VTStringUtils;->leftZeros(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/String;-><init>(Ljava/lang/StringBuilder;)V

    .line 462
    .local v2, "mDate":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v6, 0x8

    if-ge v1, v6, :cond_0

    .line 463
    iget-object v6, p0, Lnet/veritran/component/VTInputText$1$1;->this$1:Lnet/veritran/component/VTInputText$1;

    iget-object v6, v6, Lnet/veritran/component/VTInputText$1;->this$0:Lnet/veritran/component/VTInputText;

    # getter for: Lnet/veritran/component/VTInputText;->maskHandler:Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;
    invoke-static {v6}, Lnet/veritran/component/VTInputText;->access$100(Lnet/veritran/component/VTInputText;)Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;

    move-result-object v6

    invoke-virtual {v6}, Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;->deleteChar()Z

    .line 462
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 466
    :cond_0
    iget-object v6, p0, Lnet/veritran/component/VTInputText$1$1;->this$1:Lnet/veritran/component/VTInputText$1;

    iget-object v6, v6, Lnet/veritran/component/VTInputText$1;->this$0:Lnet/veritran/component/VTInputText;

    invoke-virtual {v6}, Lnet/veritran/component/VTInputText;->updateAutoDumpBackground()V

    .line 467
    const-string v5, ""

    .line 469
    .local v5, "sendText":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    array-length v8, v7

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v8, :cond_2

    aget-char v0, v7, v6

    .line 470
    .local v0, "c":C
    const-string v9, "VTInputTextComponent"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "adding char: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    iget-object v9, p0, Lnet/veritran/component/VTInputText$1$1;->this$1:Lnet/veritran/component/VTInputText$1;

    iget-object v9, v9, Lnet/veritran/component/VTInputText$1;->this$0:Lnet/veritran/component/VTInputText;

    # getter for: Lnet/veritran/component/VTInputText;->maskHandler:Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;
    invoke-static {v9}, Lnet/veritran/component/VTInputText;->access$100(Lnet/veritran/component/VTInputText;)Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;

    move-result-object v9

    invoke-virtual {v9}, Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;->getVisibleText()Ljava/lang/String;

    move-result-object v4

    .line 472
    .local v4, "prev":Ljava/lang/String;
    const-string v9, "VTInputTextComponent"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "prev: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    iget-object v9, p0, Lnet/veritran/component/VTInputText$1$1;->this$1:Lnet/veritran/component/VTInputText$1;

    iget-object v9, v9, Lnet/veritran/component/VTInputText$1;->this$0:Lnet/veritran/component/VTInputText;

    # getter for: Lnet/veritran/component/VTInputText;->maskHandler:Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;
    invoke-static {v9}, Lnet/veritran/component/VTInputText;->access$100(Lnet/veritran/component/VTInputText;)Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;

    move-result-object v9

    invoke-virtual {v9, v0}, Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;->addChar(I)Z

    .line 474
    iget-object v9, p0, Lnet/veritran/component/VTInputText$1$1;->this$1:Lnet/veritran/component/VTInputText$1;

    iget-object v9, v9, Lnet/veritran/component/VTInputText$1;->this$0:Lnet/veritran/component/VTInputText;

    # getter for: Lnet/veritran/component/VTInputText;->maskHandler:Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;
    invoke-static {v9}, Lnet/veritran/component/VTInputText;->access$100(Lnet/veritran/component/VTInputText;)Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;

    move-result-object v9

    invoke-virtual {v9}, Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;->getVisibleText()Ljava/lang/String;

    move-result-object v3

    .line 475
    .local v3, "post":Ljava/lang/String;
    const-string v9, "VTInputTextComponent"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "post: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v9, v10, :cond_1

    .line 477
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v3, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 479
    :cond_1
    const-string v9, "VTInputTextComponent"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "maskHandler.getVisibleText sendText: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 482
    .end local v0    # "c":C
    .end local v3    # "post":Ljava/lang/String;
    .end local v4    # "prev":Ljava/lang/String;
    :cond_2
    iget-object v6, p0, Lnet/veritran/component/VTInputText$1$1;->this$1:Lnet/veritran/component/VTInputText$1;

    iget-object v6, v6, Lnet/veritran/component/VTInputText$1;->this$0:Lnet/veritran/component/VTInputText;

    # getter for: Lnet/veritran/component/VTInputText;->vtInputTextView:Lnet/veritran/component/view/VTTextInterface;
    invoke-static {v6}, Lnet/veritran/component/VTInputText;->access$000(Lnet/veritran/component/VTInputText;)Lnet/veritran/component/view/VTTextInterface;

    move-result-object v6

    iget-object v7, p0, Lnet/veritran/component/VTInputText$1$1;->this$1:Lnet/veritran/component/VTInputText$1;

    iget-object v7, v7, Lnet/veritran/component/VTInputText$1;->this$0:Lnet/veritran/component/VTInputText;

    # getter for: Lnet/veritran/component/VTInputText;->maskHandler:Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;
    invoke-static {v7}, Lnet/veritran/component/VTInputText;->access$100(Lnet/veritran/component/VTInputText;)Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;

    move-result-object v7

    invoke-virtual {v7}, Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;->getVisibleText()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lnet/veritran/component/view/VTTextInterface;->setText(Ljava/lang/CharSequence;)V

    .line 483
    iget-object v6, p0, Lnet/veritran/component/VTInputText$1$1;->this$1:Lnet/veritran/component/VTInputText$1;

    iget-object v6, v6, Lnet/veritran/component/VTInputText$1;->this$0:Lnet/veritran/component/VTInputText;

    invoke-virtual {v6}, Lnet/veritran/component/VTInputText;->updateAutoDumpBackground()V

    .line 485
    iget-object v6, p0, Lnet/veritran/component/VTInputText$1$1;->this$1:Lnet/veritran/component/VTInputText$1;

    iget-object v6, v6, Lnet/veritran/component/VTInputText$1;->this$0:Lnet/veritran/component/VTInputText;

    # getter for: Lnet/veritran/component/VTInputText;->haveHint:Z
    invoke-static {v6}, Lnet/veritran/component/VTInputText;->access$200(Lnet/veritran/component/VTInputText;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lnet/veritran/component/VTInputText$1$1;->this$1:Lnet/veritran/component/VTInputText$1;

    iget-object v6, v6, Lnet/veritran/component/VTInputText$1;->this$0:Lnet/veritran/component/VTInputText;

    # getter for: Lnet/veritran/component/VTInputText;->isPinType:Z
    invoke-static {v6}, Lnet/veritran/component/VTInputText;->access$300(Lnet/veritran/component/VTInputText;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 486
    iget-object v6, p0, Lnet/veritran/component/VTInputText$1$1;->this$1:Lnet/veritran/component/VTInputText$1;

    iget-object v6, v6, Lnet/veritran/component/VTInputText$1;->this$0:Lnet/veritran/component/VTInputText;

    invoke-virtual {v6}, Lnet/veritran/component/VTInputText;->getActivity()Lnet/veritran/VTCommonActivity;

    move-result-object v7

    iget-object v6, p0, Lnet/veritran/component/VTInputText$1$1;->this$1:Lnet/veritran/component/VTInputText$1;

    iget-object v6, v6, Lnet/veritran/component/VTInputText$1;->this$0:Lnet/veritran/component/VTInputText;

    # getter for: Lnet/veritran/component/VTInputText;->vtInputTextView:Lnet/veritran/component/view/VTTextInterface;
    invoke-static {v6}, Lnet/veritran/component/VTInputText;->access$000(Lnet/veritran/component/VTInputText;)Lnet/veritran/component/view/VTTextInterface;

    move-result-object v6

    check-cast v6, Lnet/veritran/component/view/VTInputTextView;

    iget-object v8, p0, Lnet/veritran/component/VTInputText$1$1;->this$1:Lnet/veritran/component/VTInputText$1;

    iget-object v8, v8, Lnet/veritran/component/VTInputText$1;->this$0:Lnet/veritran/component/VTInputText;

    # getter for: Lnet/veritran/component/VTInputText;->fontSize:Ljava/lang/String;
    invoke-static {v8}, Lnet/veritran/component/VTInputText;->access$400(Lnet/veritran/component/VTInputText;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Lnet/veritran/VTCommonActivity;->setTextSize(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 487
    iget-object v6, p0, Lnet/veritran/component/VTInputText$1$1;->this$1:Lnet/veritran/component/VTInputText$1;

    iget-object v6, v6, Lnet/veritran/component/VTInputText$1;->this$0:Lnet/veritran/component/VTInputText;

    # getter for: Lnet/veritran/component/VTInputText;->vtInputTextView:Lnet/veritran/component/view/VTTextInterface;
    invoke-static {v6}, Lnet/veritran/component/VTInputText;->access$000(Lnet/veritran/component/VTInputText;)Lnet/veritran/component/view/VTTextInterface;

    move-result-object v6

    check-cast v6, Lnet/veritran/component/view/VTInputTextView;

    iget-object v7, p0, Lnet/veritran/component/VTInputText$1$1;->this$1:Lnet/veritran/component/VTInputText$1;

    iget-object v7, v7, Lnet/veritran/component/VTInputText$1;->this$0:Lnet/veritran/component/VTInputText;

    # getter for: Lnet/veritran/component/VTInputText;->fontFamily:Ljava/lang/String;
    invoke-static {v7}, Lnet/veritran/component/VTInputText;->access$500(Lnet/veritran/component/VTInputText;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lnet/veritran/component/VTInputText$1$1;->this$1:Lnet/veritran/component/VTInputText$1;

    iget-object v8, v8, Lnet/veritran/component/VTInputText$1;->this$0:Lnet/veritran/component/VTInputText;

    # getter for: Lnet/veritran/component/VTInputText;->fontStyle:Ljava/lang/String;
    invoke-static {v8}, Lnet/veritran/component/VTInputText;->access$600(Lnet/veritran/component/VTInputText;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lnet/veritran/component/VTInputText$1$1;->this$1:Lnet/veritran/component/VTInputText$1;

    iget-object v9, v9, Lnet/veritran/component/VTInputText$1;->this$0:Lnet/veritran/component/VTInputText;

    # getter for: Lnet/veritran/component/VTInputText;->fontWeight:Ljava/lang/String;
    invoke-static {v9}, Lnet/veritran/component/VTInputText;->access$700(Lnet/veritran/component/VTInputText;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v7, v8, v9}, Lnet/veritran/utils/VTFontHelper;->setTextFamily(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    :cond_3
    iget-object v6, p0, Lnet/veritran/component/VTInputText$1$1;->this$1:Lnet/veritran/component/VTInputText$1;

    iget-object v6, v6, Lnet/veritran/component/VTInputText$1;->this$0:Lnet/veritran/component/VTInputText;

    # getter for: Lnet/veritran/component/VTInputText;->vtInputTextView:Lnet/veritran/component/view/VTTextInterface;
    invoke-static {v6}, Lnet/veritran/component/VTInputText;->access$000(Lnet/veritran/component/VTInputText;)Lnet/veritran/component/view/VTTextInterface;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Lnet/veritran/component/view/VTTextInterface;->setError(Ljava/lang/CharSequence;)V

    .line 491
    return-void
.end method
