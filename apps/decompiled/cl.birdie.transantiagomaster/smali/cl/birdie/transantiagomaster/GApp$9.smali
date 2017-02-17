.class final Lcl/birdie/transantiagomaster/GApp$9;
.super Ljava/lang/Object;
.source "GApp.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcl/birdie/transantiagomaster/GApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/birdie/transantiagomaster/GApp;

.field private final synthetic val$txtParadero:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcl/birdie/transantiagomaster/GApp;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/birdie/transantiagomaster/GApp$9;->this$0:Lcl/birdie/transantiagomaster/GApp;

    iput-object p2, p0, Lcl/birdie/transantiagomaster/GApp$9;->val$txtParadero:Landroid/widget/TextView;

    .line 1070
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 1074
    sget-object v1, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v1, v1, Lcl/birdie/transantiagomaster/PantallaDatos;->svc:Lcl/birdie/transantiagomaster/handlers/ServiciosController;

    invoke-virtual {v1}, Lcl/birdie/transantiagomaster/handlers/ServiciosController;->siguienteParadero()V

    .line 1075
    sget-object v1, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v1, v1, Lcl/birdie/transantiagomaster/PantallaDatos;->svc:Lcl/birdie/transantiagomaster/handlers/ServiciosController;

    invoke-virtual {v1}, Lcl/birdie/transantiagomaster/handlers/ServiciosController;->getParaderoActual()Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    move-result-object v0

    .line 1076
    .local v0, "par":Lcl/birdie/transantiagomaster/newobjetos/Paradero;
    if-eqz v0, :cond_0

    .line 1077
    iget-object v1, p0, Lcl/birdie/transantiagomaster/GApp$9;->val$txtParadero:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcl/birdie/transantiagomaster/GApp$9;->this$0:Lcl/birdie/transantiagomaster/GApp;

    const v4, 0x7f06007b

    invoke-virtual {v3, v4}, Lcl/birdie/transantiagomaster/GApp;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcl/birdie/transantiagomaster/newobjetos/Paradero;->codigo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1078
    :cond_0
    return-void
.end method
