.class final Lcl/birdie/transantiagomaster/GApp$14;
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


# direct methods
.method constructor <init>(Lcl/birdie/transantiagomaster/GApp;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/birdie/transantiagomaster/GApp$14;->this$0:Lcl/birdie/transantiagomaster/GApp;

    .line 1247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 1251
    sget-object v1, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget v1, v1, Lcl/birdie/transantiagomaster/PantallaDatos;->legPlanificacion:I

    sget-object v2, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v2, v2, Lcl/birdie/transantiagomaster/PantallaDatos;->planificacion:Lcl/birdie/transantiagomaster/newobjetos/Plan;

    iget-object v2, v2, Lcl/birdie/transantiagomaster/newobjetos/Plan;->itinerarios:[Lcl/birdie/transantiagomaster/newobjetos/Itinerario;

    sget-object v3, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget v3, v3, Lcl/birdie/transantiagomaster/PantallaDatos;->itinerarioPlanificacion:I

    aget-object v2, v2, v3

    iget-object v2, v2, Lcl/birdie/transantiagomaster/newobjetos/Itinerario;->legs:[Lcl/birdie/transantiagomaster/newobjetos/Leg;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    .line 1252
    sget-object v1, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget v2, v1, Lcl/birdie/transantiagomaster/PantallaDatos;->legPlanificacion:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcl/birdie/transantiagomaster/PantallaDatos;->legPlanificacion:I

    .line 1253
    sget-object v1, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v1, v1, Lcl/birdie/transantiagomaster/PantallaDatos;->planificacion:Lcl/birdie/transantiagomaster/newobjetos/Plan;

    iget-object v1, v1, Lcl/birdie/transantiagomaster/newobjetos/Plan;->itinerarios:[Lcl/birdie/transantiagomaster/newobjetos/Itinerario;

    sget-object v2, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget v2, v2, Lcl/birdie/transantiagomaster/PantallaDatos;->itinerarioPlanificacion:I

    aget-object v1, v1, v2

    iget-object v1, v1, Lcl/birdie/transantiagomaster/newobjetos/Itinerario;->legs:[Lcl/birdie/transantiagomaster/newobjetos/Leg;

    sget-object v2, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget v2, v2, Lcl/birdie/transantiagomaster/PantallaDatos;->legPlanificacion:I

    aget-object v0, v1, v2

    .line 1254
    .local v0, "leg":Lcl/birdie/transantiagomaster/newobjetos/Leg;
    iget-object v1, v0, Lcl/birdie/transantiagomaster/newobjetos/Leg;->fromPos:Lcl/birdie/toolkit/CacheableLatLng;

    if-eqz v1, :cond_0

    .line 1255
    iget-object v1, v0, Lcl/birdie/transantiagomaster/newobjetos/Leg;->fromPos:Lcl/birdie/toolkit/CacheableLatLng;

    invoke-static {v1}, Lcl/birdie/transantiagomaster/Pantalla;->setCenter(Lcl/birdie/toolkit/LatLng;)V

    .line 1256
    :cond_0
    iget-object v1, p0, Lcl/birdie/transantiagomaster/GApp$14;->this$0:Lcl/birdie/transantiagomaster/GApp;

    invoke-static {v1}, Lcl/birdie/transantiagomaster/GApp;->access$0(Lcl/birdie/transantiagomaster/GApp;)V

    .line 1258
    .end local v0    # "leg":Lcl/birdie/transantiagomaster/newobjetos/Leg;
    :cond_1
    return-void
.end method
