.class Lcl/santander/smartphone/Tarjetas$4;
.super Ljava/lang/Object;
.source "Tarjetas.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/santander/smartphone/Tarjetas;->onActivityCreated(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcl/santander/smartphone/Tarjetas$4;->this$0:Lcl/santander/smartphone/Tarjetas;

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 147
    new-instance v0, Lcl/santander/smartphone/EstadoCuentaPDF;

    iget-object v1, p0, Lcl/santander/smartphone/Tarjetas$4;->this$0:Lcl/santander/smartphone/Tarjetas;

    iget-object v1, v1, Lcl/santander/smartphone/Tarjetas;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-direct {v0, v1}, Lcl/santander/smartphone/EstadoCuentaPDF;-><init>(Landroid/app/Activity;)V

    .line 149
    return-void
.end method
