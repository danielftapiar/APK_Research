.class public final Lcl/birdie/transantiagomaster/facebook/FacebookDatos;
.super Ljava/lang/Object;
.source "FacebookDatos.java"


# instance fields
.field public commentPost:Lcl/birdie/transantiagomaster/facebook/models/PostModel;

.field public dataImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcl/birdie/transantiagomaster/facebook/models/ImageModel;",
            ">;"
        }
    .end annotation
.end field

.field public dataPosts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcl/birdie/transantiagomaster/facebook/models/PostModel;",
            ">;"
        }
    .end annotation
.end field

.field public image:Lcl/birdie/transantiagomaster/facebook/models/ImageModel;

.field public photoTarget:Lcl/birdie/transantiagomaster/IPhotoTarget;

.field public publishCallback:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

.field public urlImageAttach:Ljava/lang/String;

.field public usuariosSinImagenes:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcl/birdie/transantiagomaster/facebook/models/UserModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcl/birdie/transantiagomaster/facebook/FacebookDatos;->dataPosts:Ljava/util/List;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcl/birdie/transantiagomaster/facebook/FacebookDatos;->dataImages:Ljava/util/List;

    .line 35
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcl/birdie/transantiagomaster/facebook/FacebookDatos;->usuariosSinImagenes:Ljava/util/Hashtable;

    .line 12
    return-void
.end method
