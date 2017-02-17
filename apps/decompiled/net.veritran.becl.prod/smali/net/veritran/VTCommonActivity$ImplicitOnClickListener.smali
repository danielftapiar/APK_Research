.class Lnet/veritran/VTCommonActivity$ImplicitOnClickListener;
.super Ljava/lang/Object;
.source "VTCommonActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/veritran/VTCommonActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImplicitOnClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lnet/veritran/VTCommonActivity;


# direct methods
.method constructor <init>(Lnet/veritran/VTCommonActivity;)V
    .locals 0
    .param p1, "this$0"    # Lnet/veritran/VTCommonActivity;

    .prologue
    .line 2202
    iput-object p1, p0, Lnet/veritran/VTCommonActivity$ImplicitOnClickListener;->this$0:Lnet/veritran/VTCommonActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 2206
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2207
    .local v1, "item":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lnet/veritran/VTCommonActivity$ImplicitOnClickListener;->this$0:Lnet/veritran/VTCommonActivity;

    const-class v3, Lnet/veritran/VTCommonActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2209
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "net.veritran.listPosition"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2210
    const-string v2, "net.veritran.listItem"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2213
    iget-object v2, p0, Lnet/veritran/VTCommonActivity$ImplicitOnClickListener;->this$0:Lnet/veritran/VTCommonActivity;

    iget-object v3, p0, Lnet/veritran/VTCommonActivity$ImplicitOnClickListener;->this$0:Lnet/veritran/VTCommonActivity;

    iget-object v3, v3, Lnet/veritran/VTCommonActivity;->application:Lnet/veritran/VTUserApplicationSmart;

    invoke-virtual {v3}, Lnet/veritran/VTUserApplicationSmart;->getCurrentState()I

    move-result v3

    invoke-virtual {v2, v3, v0}, Lnet/veritran/VTCommonActivity;->changeState(ILandroid/content/Intent;)V

    .line 2214
    return-void
.end method
