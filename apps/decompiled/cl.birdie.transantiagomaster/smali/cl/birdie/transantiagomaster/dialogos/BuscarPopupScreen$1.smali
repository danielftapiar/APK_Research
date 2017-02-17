.class final Lcl/birdie/transantiagomaster/dialogos/BuscarPopupScreen$1;
.super Ljava/lang/Object;
.source "BuscarPopupScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/birdie/transantiagomaster/dialogos/BuscarPopupScreen;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/birdie/transantiagomaster/dialogos/BuscarPopupScreen;


# direct methods
.method constructor <init>(Lcl/birdie/transantiagomaster/dialogos/BuscarPopupScreen;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/birdie/transantiagomaster/dialogos/BuscarPopupScreen$1;->this$0:Lcl/birdie/transantiagomaster/dialogos/BuscarPopupScreen;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 80
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/BuscarPopupScreen$1;->this$0:Lcl/birdie/transantiagomaster/dialogos/BuscarPopupScreen;

    invoke-virtual {v0}, Lcl/birdie/transantiagomaster/dialogos/BuscarPopupScreen;->procesarBusqueda()V

    .line 81
    return-void
.end method
