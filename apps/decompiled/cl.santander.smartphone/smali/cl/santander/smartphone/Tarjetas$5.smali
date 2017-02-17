.class Lcl/santander/smartphone/Tarjetas$5;
.super Ljava/lang/Object;
.source "Tarjetas.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/santander/smartphone/Tarjetas;->onStop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/santander/smartphone/Tarjetas;


# direct methods
.method constructor <init>(Lcl/santander/smartphone/Tarjetas;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/santander/smartphone/Tarjetas$5;->this$0:Lcl/santander/smartphone/Tarjetas;

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcl/santander/smartphone/Tarjetas$5;->this$0:Lcl/santander/smartphone/Tarjetas;

    # invokes: Lcl/santander/smartphone/Tarjetas;->DeletePDF()V
    invoke-static {v0}, Lcl/santander/smartphone/Tarjetas;->access$0(Lcl/santander/smartphone/Tarjetas;)V

    .line 188
    return-void
.end method
