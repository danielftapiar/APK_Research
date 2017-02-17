.class Lnet/veritran/component/VTInputText$1;
.super Ljava/lang/Object;
.source "VTInputText.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$displayName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lnet/veritran/component/VTInputText;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lnet/veritran/component/VTInputText;

    .prologue
    .line 421
    iput-object p1, p0, Lnet/veritran/component/VTInputText$1;->this$0:Lnet/veritran/component/VTInputText;

    iput-object p2, p0, Lnet/veritran/component/VTInputText$1;->val$displayName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 19
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 429
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/veritran/component/VTInputText$1;->this$0:Lnet/veritran/component/VTInputText;

    # getter for: Lnet/veritran/component/VTInputText;->vtInputTextView:Lnet/veritran/component/view/VTTextInterface;
    invoke-static {v2}, Lnet/veritran/component/VTInputText;->access$000(Lnet/veritran/component/VTInputText;)Lnet/veritran/component/view/VTTextInterface;

    move-result-object v2

    invoke-interface {v2}, Lnet/veritran/component/view/VTTextInterface;->getText()Landroid/text/Editable;

    move-result-object v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/veritran/component/VTInputText$1;->this$0:Lnet/veritran/component/VTInputText;

    # getter for: Lnet/veritran/component/VTInputText;->vtInputTextView:Lnet/veritran/component/view/VTTextInterface;
    invoke-static {v2}, Lnet/veritran/component/VTInputText;->access$000(Lnet/veritran/component/VTInputText;)Lnet/veritran/component/view/VTTextInterface;

    move-result-object v2

    invoke-interface {v2}, Lnet/veritran/component/view/VTTextInterface;->getText()Landroid/text/Editable;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 430
    const-string v2, "VTInputTextComponent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Fecha que tengo: "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v9, v0, Lnet/veritran/component/VTInputText$1;->this$0:Lnet/veritran/component/VTInputText;

    # getter for: Lnet/veritran/component/VTInputText;->vtInputTextView:Lnet/veritran/component/view/VTTextInterface;
    invoke-static {v9}, Lnet/veritran/component/VTInputText;->access$000(Lnet/veritran/component/VTInputText;)Lnet/veritran/component/view/VTTextInterface;

    move-result-object v9

    invoke-interface {v9}, Lnet/veritran/component/view/VTTextInterface;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/veritran/component/VTInputText$1;->this$0:Lnet/veritran/component/VTInputText;

    # getter for: Lnet/veritran/component/VTInputText;->vtInputTextView:Lnet/veritran/component/view/VTTextInterface;
    invoke-static {v2}, Lnet/veritran/component/VTInputText;->access$000(Lnet/veritran/component/VTInputText;)Lnet/veritran/component/view/VTTextInterface;

    move-result-object v2

    invoke-interface {v2}, Lnet/veritran/component/view/VTTextInterface;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    .line 433
    .local v18, "mDate":Ljava/lang/String;
    const/4 v2, 0x0

    :try_start_0
    const-string v3, "/"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 434
    .local v8, "mDay":I
    const-string v2, "/"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    const-string v3, "/"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v7, v2, -0x1

    .line 435
    .local v7, "mMonth":I
    const-string v2, "/"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 451
    .end local v18    # "mDate":Ljava/lang/String;
    .local v6, "mYear":I
    :goto_0
    new-instance v5, Lnet/veritran/component/VTInputText$1$1;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lnet/veritran/component/VTInputText$1$1;-><init>(Lnet/veritran/component/VTInputText$1;)V

    .line 494
    .local v5, "onDateSet":Landroid/app/DatePickerDialog$OnDateSetListener;
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/veritran/component/VTInputText$1;->this$0:Lnet/veritran/component/VTInputText;

    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/veritran/component/VTInputText$1;->this$0:Lnet/veritran/component/VTInputText;

    iget-object v3, v3, Lnet/veritran/component/VTInputText;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v9, "themeStyle"

    invoke-virtual {v3, v9}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v9, v0, Lnet/veritran/component/VTInputText$1;->this$0:Lnet/veritran/component/VTInputText;

    invoke-virtual {v9}, Lnet/veritran/component/VTInputText;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v9

    invoke-static {v3, v9}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v3

    # setter for: Lnet/veritran/component/VTInputText;->themeStyle:Ljava/lang/String;
    invoke-static {v2, v3}, Lnet/veritran/component/VTInputText;->access$802(Lnet/veritran/component/VTInputText;Ljava/lang/String;)Ljava/lang/String;

    .line 496
    const/4 v4, 0x5

    .line 498
    .local v4, "temaint":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/veritran/component/VTInputText$1;->this$0:Lnet/veritran/component/VTInputText;

    # getter for: Lnet/veritran/component/VTInputText;->themeStyle:Ljava/lang/String;
    invoke-static {v2}, Lnet/veritran/component/VTInputText;->access$800(Lnet/veritran/component/VTInputText;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/veritran/component/VTInputText$1;->this$0:Lnet/veritran/component/VTInputText;

    # getter for: Lnet/veritran/component/VTInputText;->themeStyle:Ljava/lang/String;
    invoke-static {v2}, Lnet/veritran/component/VTInputText;->access$800(Lnet/veritran/component/VTInputText;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "dark"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 499
    const/4 v4, 0x2

    .line 500
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/veritran/component/VTInputText$1;->this$0:Lnet/veritran/component/VTInputText;

    # getter for: Lnet/veritran/component/VTInputText;->type:Ljava/lang/String;
    invoke-static {v2}, Lnet/veritran/component/VTInputText;->access$900(Lnet/veritran/component/VTInputText;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "calendar"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 501
    const/4 v4, 0x4

    .line 513
    :cond_0
    :goto_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v2, v3, :cond_4

    .line 514
    new-instance v1, Lnet/veritran/component/VTInputText$1$2;

    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/veritran/component/VTInputText$1;->this$0:Lnet/veritran/component/VTInputText;

    invoke-virtual {v2}, Lnet/veritran/component/VTInputText;->getActivity()Lnet/veritran/VTCommonActivity;

    move-result-object v3

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v8}, Lnet/veritran/component/VTInputText$1$2;-><init>(Lnet/veritran/component/VTInputText$1;Landroid/content/Context;ILandroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 531
    .local v1, "datePickerDialog":Landroid/app/DatePickerDialog;
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/veritran/component/VTInputText$1;->this$0:Lnet/veritran/component/VTInputText;

    # getter for: Lnet/veritran/component/VTInputText;->type:Ljava/lang/String;
    invoke-static {v2}, Lnet/veritran/component/VTInputText;->access$900(Lnet/veritran/component/VTInputText;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "calendar"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_5

    .line 532
    invoke-virtual {v1}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/DatePicker;->setCalendarViewShown(Z)V

    .line 533
    invoke-virtual {v1}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/DatePicker;->setSpinnersShown(Z)V

    .line 539
    :cond_1
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/veritran/component/VTInputText$1;->val$displayName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/DatePickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 541
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/DatePickerDialog;->setCanceledOnTouchOutside(Z)V

    .line 542
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/DatePickerDialog;->setCancelable(Z)V

    .line 544
    invoke-virtual {v1}, Landroid/app/DatePickerDialog;->show()V

    .line 545
    return-void

    .line 436
    .end local v1    # "datePickerDialog":Landroid/app/DatePickerDialog;
    .end local v4    # "temaint":I
    .end local v5    # "onDateSet":Landroid/app/DatePickerDialog$OnDateSetListener;
    .end local v6    # "mYear":I
    .end local v7    # "mMonth":I
    .end local v8    # "mDay":I
    .restart local v18    # "mDate":Ljava/lang/String;
    :catch_0
    move-exception v17

    .line 437
    .local v17, "e":Ljava/lang/Exception;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v16

    .line 438
    .local v16, "calendar":Ljava/util/Calendar;
    const/4 v2, 0x5

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 439
    .restart local v8    # "mDay":I
    const/4 v2, 0x2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 440
    .restart local v7    # "mMonth":I
    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 441
    .restart local v6    # "mYear":I
    const-string v2, "VTInputTextComponent"

    const-string v3, "Error al castear fecha"

    invoke-static {v2, v3}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 445
    .end local v6    # "mYear":I
    .end local v7    # "mMonth":I
    .end local v8    # "mDay":I
    .end local v16    # "calendar":Ljava/util/Calendar;
    .end local v17    # "e":Ljava/lang/Exception;
    .end local v18    # "mDate":Ljava/lang/String;
    :cond_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v16

    .line 446
    .restart local v16    # "calendar":Ljava/util/Calendar;
    const/4 v2, 0x5

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 447
    .restart local v8    # "mDay":I
    const/4 v2, 0x2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 448
    .restart local v7    # "mMonth":I
    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .restart local v6    # "mYear":I
    goto/16 :goto_0

    .line 503
    .end local v16    # "calendar":Ljava/util/Calendar;
    .restart local v4    # "temaint":I
    .restart local v5    # "onDateSet":Landroid/app/DatePickerDialog$OnDateSetListener;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/veritran/component/VTInputText$1;->this$0:Lnet/veritran/component/VTInputText;

    # getter for: Lnet/veritran/component/VTInputText;->themeStyle:Ljava/lang/String;
    invoke-static {v2}, Lnet/veritran/component/VTInputText;->access$800(Lnet/veritran/component/VTInputText;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/veritran/component/VTInputText$1;->this$0:Lnet/veritran/component/VTInputText;

    # getter for: Lnet/veritran/component/VTInputText;->themeStyle:Ljava/lang/String;
    invoke-static {v2}, Lnet/veritran/component/VTInputText;->access$800(Lnet/veritran/component/VTInputText;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "light"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 504
    const/4 v4, 0x3

    .line 505
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/veritran/component/VTInputText$1;->this$0:Lnet/veritran/component/VTInputText;

    # getter for: Lnet/veritran/component/VTInputText;->type:Ljava/lang/String;
    invoke-static {v2}, Lnet/veritran/component/VTInputText;->access$900(Lnet/veritran/component/VTInputText;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "calendar"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 506
    const/4 v4, 0x5

    goto/16 :goto_1

    .line 522
    :cond_4
    new-instance v1, Lnet/veritran/component/VTInputText$1$3;

    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/veritran/component/VTInputText$1;->this$0:Lnet/veritran/component/VTInputText;

    invoke-virtual {v2}, Lnet/veritran/component/VTInputText;->getActivity()Lnet/veritran/VTCommonActivity;

    move-result-object v11

    move-object v9, v1

    move-object/from16 v10, p0

    move-object v12, v5

    move v13, v6

    move v14, v7

    move v15, v8

    invoke-direct/range {v9 .. v15}, Lnet/veritran/component/VTInputText$1$3;-><init>(Lnet/veritran/component/VTInputText$1;Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .restart local v1    # "datePickerDialog":Landroid/app/DatePickerDialog;
    goto/16 :goto_2

    .line 534
    :cond_5
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_1

    .line 535
    invoke-virtual {v1}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/DatePicker;->setCalendarViewShown(Z)V

    .line 536
    invoke-virtual {v1}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/DatePicker;->setSpinnersShown(Z)V

    goto/16 :goto_3
.end method
