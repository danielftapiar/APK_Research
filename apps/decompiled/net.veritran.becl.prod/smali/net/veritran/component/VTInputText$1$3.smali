.class Lnet/veritran/component/VTInputText$1$3;
.super Landroid/app/DatePickerDialog;
.source "VTInputText.java"


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
.method constructor <init>(Lnet/veritran/component/VTInputText$1;Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V
    .locals 6
    .param p1, "this$1"    # Lnet/veritran/component/VTInputText$1;
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # Landroid/app/DatePickerDialog$OnDateSetListener;
    .param p4, "x2"    # I
    .param p5, "x3"    # I
    .param p6, "x4"    # I

    .prologue
    .line 522
    iput-object p1, p0, Lnet/veritran/component/VTInputText$1$3;->this$1:Lnet/veritran/component/VTInputText$1;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    return-void
.end method


# virtual methods
.method public onDateChanged(Landroid/widget/DatePicker;III)V
    .locals 1
    .param p1, "view"    # Landroid/widget/DatePicker;
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I

    .prologue
    .line 525
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/DatePickerDialog;->onDateChanged(Landroid/widget/DatePicker;III)V

    .line 526
    iget-object v0, p0, Lnet/veritran/component/VTInputText$1$3;->this$1:Lnet/veritran/component/VTInputText$1;

    iget-object v0, v0, Lnet/veritran/component/VTInputText$1;->val$displayName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lnet/veritran/component/VTInputText$1$3;->setTitle(Ljava/lang/CharSequence;)V

    .line 527
    return-void
.end method
