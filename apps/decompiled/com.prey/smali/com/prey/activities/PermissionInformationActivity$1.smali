.class Lcom/prey/activities/PermissionInformationActivity$1;
.super Ljava/lang/Object;
.source "PermissionInformationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prey/activities/PermissionInformationActivity;->showScreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prey/activities/PermissionInformationActivity;


# direct methods
.method constructor <init>(Lcom/prey/activities/PermissionInformationActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/prey/activities/PermissionInformationActivity;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/prey/activities/PermissionInformationActivity$1;->this$0:Lcom/prey/activities/PermissionInformationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 83
    iget-object v1, p0, Lcom/prey/activities/PermissionInformationActivity$1;->this$0:Lcom/prey/activities/PermissionInformationActivity;

    const/4 v2, 0x1

    # setter for: Lcom/prey/activities/PermissionInformationActivity;->first:Z
    invoke-static {v1, v2}, Lcom/prey/activities/PermissionInformationActivity;->access$002(Lcom/prey/activities/PermissionInformationActivity;Z)Z

    .line 84
    iget-object v1, p0, Lcom/prey/activities/PermissionInformationActivity$1;->this$0:Lcom/prey/activities/PermissionInformationActivity;

    invoke-virtual {v1}, Lcom/prey/activities/PermissionInformationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/prey/backwardcompatibility/FroyoSupport;->getInstance(Landroid/content/Context;)Lcom/prey/backwardcompatibility/FroyoSupport;

    move-result-object v1

    invoke-virtual {v1}, Lcom/prey/backwardcompatibility/FroyoSupport;->getAskForAdminPrivilegesIntent()Landroid/content/Intent;

    move-result-object v0

    .line 85
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/prey/activities/PermissionInformationActivity$1;->this$0:Lcom/prey/activities/PermissionInformationActivity;

    const/16 v2, 0xa

    invoke-virtual {v1, v0, v2}, Lcom/prey/activities/PermissionInformationActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 86
    invoke-static {}, Lcom/prey/net/PreyWebServices;->getInstance()Lcom/prey/net/PreyWebServices;

    move-result-object v1

    iget-object v2, p0, Lcom/prey/activities/PermissionInformationActivity$1;->this$0:Lcom/prey/activities/PermissionInformationActivity;

    invoke-virtual {v2}, Lcom/prey/activities/PermissionInformationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x7d4

    invoke-virtual {v1, v2, v3}, Lcom/prey/net/PreyWebServices;->sendEvent(Landroid/content/Context;I)V

    .line 87
    return-void
.end method
