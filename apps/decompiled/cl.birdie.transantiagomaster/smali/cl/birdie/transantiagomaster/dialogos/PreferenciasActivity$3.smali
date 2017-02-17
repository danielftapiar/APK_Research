.class final Lcl/birdie/transantiagomaster/dialogos/PreferenciasActivity$3;
.super Ljava/lang/Object;
.source "PreferenciasActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcl/birdie/transantiagomaster/dialogos/PreferenciasActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/birdie/transantiagomaster/dialogos/PreferenciasActivity;


# direct methods
.method constructor <init>(Lcl/birdie/transantiagomaster/dialogos/PreferenciasActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/birdie/transantiagomaster/dialogos/PreferenciasActivity$3;->this$0:Lcl/birdie/transantiagomaster/dialogos/PreferenciasActivity;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcl/birdie/transantiagomaster/dialogos/PreferenciasActivity$3;)Lcl/birdie/transantiagomaster/dialogos/PreferenciasActivity;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/PreferenciasActivity$3;->this$0:Lcl/birdie/transantiagomaster/dialogos/PreferenciasActivity;

    return-object v0
.end method


# virtual methods
.method public final onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "arg0"    # Landroid/preference/Preference;

    .prologue
    .line 79
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/PreferenciasActivity$3;->this$0:Lcl/birdie/transantiagomaster/dialogos/PreferenciasActivity;

    invoke-static {}, Lcl/birdie/transantiagomaster/handlers/DatabaseHandler;->inicializar$faab20d()V

    .line 80
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/PreferenciasActivity$3;->this$0:Lcl/birdie/transantiagomaster/dialogos/PreferenciasActivity;

    new-instance v1, Lcl/birdie/transantiagomaster/dialogos/PreferenciasActivity$3$1;

    invoke-direct {v1, p0}, Lcl/birdie/transantiagomaster/dialogos/PreferenciasActivity$3$1;-><init>(Lcl/birdie/transantiagomaster/dialogos/PreferenciasActivity$3;)V

    invoke-static {v0, v1}, Lcl/birdie/transantiagomaster/handlers/DatabaseHandler;->descargarBaseDatos(Landroid/app/Activity;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V

    .line 97
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/PreferenciasActivity$3;->this$0:Lcl/birdie/transantiagomaster/dialogos/PreferenciasActivity;

    new-instance v1, Lcl/birdie/transantiagomaster/dialogos/PreferenciasActivity$3$2;

    invoke-direct {v1, p0}, Lcl/birdie/transantiagomaster/dialogos/PreferenciasActivity$3$2;-><init>(Lcl/birdie/transantiagomaster/dialogos/PreferenciasActivity$3;)V

    invoke-static {v0, v1}, Lcl/birdie/transantiagomaster/handlers/DatabaseHandler;->descargarMapa(Landroid/app/Activity;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V

    .line 113
    const/4 v0, 0x1

    return v0
.end method
