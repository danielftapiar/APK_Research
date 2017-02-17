.class Lcl/santander/smartphone/localizador/ComoLlegar$ClickListener;
.super Ljava/lang/Object;
.source "ComoLlegar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcl/santander/smartphone/localizador/ComoLlegar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcl/santander/smartphone/localizador/ComoLlegar;


# direct methods
.method private constructor <init>(Lcl/santander/smartphone/localizador/ComoLlegar;)V
    .locals 0

    .prologue
    .line 359
    iput-object p1, p0, Lcl/santander/smartphone/localizador/ComoLlegar$ClickListener;->this$0:Lcl/santander/smartphone/localizador/ComoLlegar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcl/santander/smartphone/localizador/ComoLlegar;Lcl/santander/smartphone/localizador/ComoLlegar$ClickListener;)V
    .locals 0

    .prologue
    .line 359
    invoke-direct {p0, p1}, Lcl/santander/smartphone/localizador/ComoLlegar$ClickListener;-><init>(Lcl/santander/smartphone/localizador/ComoLlegar;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v1, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 366
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 418
    :cond_0
    :goto_0
    return-void

    .line 368
    :sswitch_0
    iget-object v0, p0, Lcl/santander/smartphone/localizador/ComoLlegar$ClickListener;->this$0:Lcl/santander/smartphone/localizador/ComoLlegar;

    # getter for: Lcl/santander/smartphone/localizador/ComoLlegar;->actualIndication:I
    invoke-static {v0}, Lcl/santander/smartphone/localizador/ComoLlegar;->access$2(Lcl/santander/smartphone/localizador/ComoLlegar;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcl/santander/smartphone/localizador/ComoLlegar;->access$3(Lcl/santander/smartphone/localizador/ComoLlegar;I)V

    .line 369
    iget-object v0, p0, Lcl/santander/smartphone/localizador/ComoLlegar$ClickListener;->this$0:Lcl/santander/smartphone/localizador/ComoLlegar;

    # invokes: Lcl/santander/smartphone/localizador/ComoLlegar;->continueIndications()V
    invoke-static {v0}, Lcl/santander/smartphone/localizador/ComoLlegar;->access$4(Lcl/santander/smartphone/localizador/ComoLlegar;)V

    goto :goto_0

    .line 372
    :sswitch_1
    iget-object v0, p0, Lcl/santander/smartphone/localizador/ComoLlegar$ClickListener;->this$0:Lcl/santander/smartphone/localizador/ComoLlegar;

    # getter for: Lcl/santander/smartphone/localizador/ComoLlegar;->actualIndication:I
    invoke-static {v0}, Lcl/santander/smartphone/localizador/ComoLlegar;->access$2(Lcl/santander/smartphone/localizador/ComoLlegar;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcl/santander/smartphone/localizador/ComoLlegar;->access$3(Lcl/santander/smartphone/localizador/ComoLlegar;I)V

    .line 373
    iget-object v0, p0, Lcl/santander/smartphone/localizador/ComoLlegar$ClickListener;->this$0:Lcl/santander/smartphone/localizador/ComoLlegar;

    # invokes: Lcl/santander/smartphone/localizador/ComoLlegar;->continueIndications()V
    invoke-static {v0}, Lcl/santander/smartphone/localizador/ComoLlegar;->access$4(Lcl/santander/smartphone/localizador/ComoLlegar;)V

    goto :goto_0

    .line 378
    :sswitch_2
    iget-object v0, p0, Lcl/santander/smartphone/localizador/ComoLlegar$ClickListener;->this$0:Lcl/santander/smartphone/localizador/ComoLlegar;

    # getter for: Lcl/santander/smartphone/localizador/ComoLlegar;->mapManager:Lcl/santander/santanderCL/famtec/android/maps/Maps;
    invoke-static {v0}, Lcl/santander/smartphone/localizador/ComoLlegar;->access$0(Lcl/santander/smartphone/localizador/ComoLlegar;)Lcl/santander/santanderCL/famtec/android/maps/Maps;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcl/santander/smartphone/localizador/ComoLlegar$ClickListener;->this$0:Lcl/santander/smartphone/localizador/ComoLlegar;

    # getter for: Lcl/santander/smartphone/localizador/ComoLlegar;->mapManager:Lcl/santander/santanderCL/famtec/android/maps/Maps;
    invoke-static {v0}, Lcl/santander/smartphone/localizador/ComoLlegar;->access$0(Lcl/santander/smartphone/localizador/ComoLlegar;)Lcl/santander/santanderCL/famtec/android/maps/Maps;

    move-result-object v0

    invoke-virtual {v0}, Lcl/santander/santanderCL/famtec/android/maps/Maps;->getIndicacionesRoute()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 379
    iget-object v0, p0, Lcl/santander/smartphone/localizador/ComoLlegar$ClickListener;->this$0:Lcl/santander/smartphone/localizador/ComoLlegar;

    # getter for: Lcl/santander/smartphone/localizador/ComoLlegar;->mapManager:Lcl/santander/santanderCL/famtec/android/maps/Maps;
    invoke-static {v0}, Lcl/santander/smartphone/localizador/ComoLlegar;->access$0(Lcl/santander/smartphone/localizador/ComoLlegar;)Lcl/santander/santanderCL/famtec/android/maps/Maps;

    move-result-object v0

    invoke-virtual {v0}, Lcl/santander/santanderCL/famtec/android/maps/Maps;->getIndicacionesRoute()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_1

    .line 382
    iget-object v0, p0, Lcl/santander/smartphone/localizador/ComoLlegar$ClickListener;->this$0:Lcl/santander/smartphone/localizador/ComoLlegar;

    iget-object v0, v0, Lcl/santander/smartphone/localizador/ComoLlegar;->ly_empezar_ruta:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 383
    iget-object v0, p0, Lcl/santander/smartphone/localizador/ComoLlegar$ClickListener;->this$0:Lcl/santander/smartphone/localizador/ComoLlegar;

    iget-object v0, v0, Lcl/santander/smartphone/localizador/ComoLlegar;->ly_info_first:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 384
    iget-object v0, p0, Lcl/santander/smartphone/localizador/ComoLlegar$ClickListener;->this$0:Lcl/santander/smartphone/localizador/ComoLlegar;

    iget-object v0, v0, Lcl/santander/smartphone/localizador/ComoLlegar;->ly_info_end:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 385
    iget-object v0, p0, Lcl/santander/smartphone/localizador/ComoLlegar$ClickListener;->this$0:Lcl/santander/smartphone/localizador/ComoLlegar;

    iget-object v0, v0, Lcl/santander/smartphone/localizador/ComoLlegar;->ly_indicaciones:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 386
    iget-object v0, p0, Lcl/santander/smartphone/localizador/ComoLlegar$ClickListener;->this$0:Lcl/santander/smartphone/localizador/ComoLlegar;

    invoke-static {v0, v2}, Lcl/santander/smartphone/localizador/ComoLlegar;->access$3(Lcl/santander/smartphone/localizador/ComoLlegar;I)V

    .line 387
    iget-object v0, p0, Lcl/santander/smartphone/localizador/ComoLlegar$ClickListener;->this$0:Lcl/santander/smartphone/localizador/ComoLlegar;

    # invokes: Lcl/santander/smartphone/localizador/ComoLlegar;->continueIndications()V
    invoke-static {v0}, Lcl/santander/smartphone/localizador/ComoLlegar;->access$4(Lcl/santander/smartphone/localizador/ComoLlegar;)V

    goto :goto_0

    .line 391
    :cond_1
    new-array v4, v3, [Ljava/lang/String;

    iget-object v0, p0, Lcl/santander/smartphone/localizador/ComoLlegar$ClickListener;->this$0:Lcl/santander/smartphone/localizador/ComoLlegar;

    const v1, 0x7f05002d

    invoke-virtual {v0, v1}, Lcl/santander/smartphone/localizador/ComoLlegar;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    .line 392
    .local v4, "s":[Ljava/lang/String;
    iget-object v0, p0, Lcl/santander/smartphone/localizador/ComoLlegar$ClickListener;->this$0:Lcl/santander/smartphone/localizador/ComoLlegar;

    iget-object v0, v0, Lcl/santander/smartphone/localizador/ComoLlegar;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    iget-object v1, p0, Lcl/santander/smartphone/localizador/ComoLlegar$ClickListener;->this$0:Lcl/santander/smartphone/localizador/ComoLlegar;

    const v2, 0x7f05015c

    invoke-virtual {v1, v2}, Lcl/santander/smartphone/localizador/ComoLlegar;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcl/santander/smartphone/localizador/ComoLlegar$ClickListener;->this$0:Lcl/santander/smartphone/localizador/ComoLlegar;

    const v5, 0x7f050162

    invoke-virtual {v2, v5}, Lcl/santander/smartphone/localizador/ComoLlegar;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 397
    .end local v4    # "s":[Ljava/lang/String;
    :sswitch_3
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 399
    invoke-virtual {p1, v3}, Landroid/view/View;->setSelected(Z)V

    .line 400
    iget-object v0, p0, Lcl/santander/smartphone/localizador/ComoLlegar$ClickListener;->this$0:Lcl/santander/smartphone/localizador/ComoLlegar;

    iget-object v0, v0, Lcl/santander/smartphone/localizador/ComoLlegar;->bt_walk:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setSelected(Z)V

    .line 401
    iget-object v0, p0, Lcl/santander/smartphone/localizador/ComoLlegar$ClickListener;->this$0:Lcl/santander/smartphone/localizador/ComoLlegar;

    invoke-static {v0, v2}, Lcl/santander/smartphone/localizador/ComoLlegar;->access$5(Lcl/santander/smartphone/localizador/ComoLlegar;I)V

    .line 403
    iget-object v0, p0, Lcl/santander/smartphone/localizador/ComoLlegar$ClickListener;->this$0:Lcl/santander/smartphone/localizador/ComoLlegar;

    # invokes: Lcl/santander/smartphone/localizador/ComoLlegar;->GenerarRuta()V
    invoke-static {v0}, Lcl/santander/smartphone/localizador/ComoLlegar;->access$6(Lcl/santander/smartphone/localizador/ComoLlegar;)V

    goto/16 :goto_0

    .line 407
    :sswitch_4
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 409
    invoke-virtual {p1, v3}, Landroid/view/View;->setSelected(Z)V

    .line 410
    iget-object v0, p0, Lcl/santander/smartphone/localizador/ComoLlegar$ClickListener;->this$0:Lcl/santander/smartphone/localizador/ComoLlegar;

    iget-object v0, v0, Lcl/santander/smartphone/localizador/ComoLlegar;->bt_drive:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setSelected(Z)V

    .line 411
    iget-object v0, p0, Lcl/santander/smartphone/localizador/ComoLlegar$ClickListener;->this$0:Lcl/santander/smartphone/localizador/ComoLlegar;

    invoke-static {v0, v3}, Lcl/santander/smartphone/localizador/ComoLlegar;->access$5(Lcl/santander/smartphone/localizador/ComoLlegar;I)V

    .line 412
    iget-object v0, p0, Lcl/santander/smartphone/localizador/ComoLlegar$ClickListener;->this$0:Lcl/santander/smartphone/localizador/ComoLlegar;

    # invokes: Lcl/santander/smartphone/localizador/ComoLlegar;->GenerarRuta()V
    invoke-static {v0}, Lcl/santander/smartphone/localizador/ComoLlegar;->access$6(Lcl/santander/smartphone/localizador/ComoLlegar;)V

    goto/16 :goto_0

    .line 366
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f060215 -> :sswitch_3
        0x7f060216 -> :sswitch_4
        0x7f06021d -> :sswitch_1
        0x7f06021e -> :sswitch_0
        0x7f060220 -> :sswitch_2
    .end sparse-switch
.end method
