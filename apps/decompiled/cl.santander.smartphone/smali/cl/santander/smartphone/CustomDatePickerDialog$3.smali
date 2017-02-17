.class Lcl/santander/smartphone/CustomDatePickerDialog$3;
.super Ljava/lang/Object;
.source "CustomDatePickerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/santander/smartphone/CustomDatePickerDialog;->setUltimosListener(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/santander/smartphone/CustomDatePickerDialog;

.field private final synthetic val$click:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcl/santander/smartphone/CustomDatePickerDialog;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/santander/smartphone/CustomDatePickerDialog$3;->this$0:Lcl/santander/smartphone/CustomDatePickerDialog;

    iput-object p2, p0, Lcl/santander/smartphone/CustomDatePickerDialog$3;->val$click:Ljava/lang/Runnable;

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 137
    iget-object v0, p0, Lcl/santander/smartphone/CustomDatePickerDialog$3;->val$click:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcl/santander/smartphone/CustomDatePickerDialog$3;->val$click:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 140
    :cond_0
    return-void
.end method
