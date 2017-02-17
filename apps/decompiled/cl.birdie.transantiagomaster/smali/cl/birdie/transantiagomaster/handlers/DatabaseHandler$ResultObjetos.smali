.class public final Lcl/birdie/transantiagomaster/handlers/DatabaseHandler$ResultObjetos;
.super Ljava/lang/Object;
.source "DatabaseHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcl/birdie/transantiagomaster/handlers/DatabaseHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResultObjetos"
.end annotation


# instance fields
.field public bips:[Lcl/birdie/transantiagomaster/newobjetos/Bip;

.field public metros:[Lcl/birdie/transantiagomaster/newobjetos/Metro;

.field public paraderos:[Lcl/birdie/transantiagomaster/newobjetos/Paradero;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 509
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 510
    iput-object v0, p0, Lcl/birdie/transantiagomaster/handlers/DatabaseHandler$ResultObjetos;->paraderos:[Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    .line 511
    iput-object v0, p0, Lcl/birdie/transantiagomaster/handlers/DatabaseHandler$ResultObjetos;->bips:[Lcl/birdie/transantiagomaster/newobjetos/Bip;

    .line 512
    iput-object v0, p0, Lcl/birdie/transantiagomaster/handlers/DatabaseHandler$ResultObjetos;->metros:[Lcl/birdie/transantiagomaster/newobjetos/Metro;

    .line 509
    return-void
.end method
