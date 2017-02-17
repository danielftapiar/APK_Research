.class Lcl/santander/smartphone/InversionesAccionesVentaValidar$CustomTextWatcher$1;
.super Ljava/lang/Object;
.source "InversionesAccionesVentaValidar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/santander/smartphone/InversionesAccionesVentaValidar$CustomTextWatcher;->onTextChanged(Ljava/lang/CharSequence;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcl/santander/smartphone/InversionesAccionesVentaValidar$CustomTextWatcher;


# direct methods
.method constructor <init>(Lcl/santander/smartphone/InversionesAccionesVentaValidar$CustomTextWatcher;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/santander/smartphone/InversionesAccionesVentaValidar$CustomTextWatcher$1;->this$1:Lcl/santander/smartphone/InversionesAccionesVentaValidar$CustomTextWatcher;

    .line 650
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 654
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaValidar$CustomTextWatcher$1;->this$1:Lcl/santander/smartphone/InversionesAccionesVentaValidar$CustomTextWatcher;

    # getter for: Lcl/santander/smartphone/InversionesAccionesVentaValidar$CustomTextWatcher;->this$0:Lcl/santander/smartphone/InversionesAccionesVentaValidar;
    invoke-static {v0}, Lcl/santander/smartphone/InversionesAccionesVentaValidar$CustomTextWatcher;->access$0(Lcl/santander/smartphone/InversionesAccionesVentaValidar$CustomTextWatcher;)Lcl/santander/smartphone/InversionesAccionesVentaValidar;

    move-result-object v0

    invoke-virtual {v0}, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->cambiafoco()V

    .line 656
    return-void
.end method
