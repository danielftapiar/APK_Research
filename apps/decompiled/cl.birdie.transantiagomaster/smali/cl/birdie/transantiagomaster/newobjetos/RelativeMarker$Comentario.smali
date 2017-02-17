.class public final Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker$Comentario;
.super Ljava/lang/Object;
.source "RelativeMarker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Comentario"
.end annotation


# instance fields
.field gender:Ljava/lang/String;

.field id:Ljava/lang/String;

.field image:Ljava/lang/String;

.field mensaje:Ljava/lang/String;

.field name:Ljava/lang/String;

.field network:Ljava/lang/String;

.field profilepic:Ljava/lang/String;

.field timestamp:Ljava/lang/String;

.field userid:Ljava/lang/String;

.field username:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "userid"    # Ljava/lang/String;
    .param p4, "username"    # Ljava/lang/String;
    .param p5, "name"    # Ljava/lang/String;
    .param p6, "gender"    # Ljava/lang/String;
    .param p7, "timestamp"    # Ljava/lang/String;
    .param p8, "image"    # Ljava/lang/String;
    .param p9, "network"    # Ljava/lang/String;
    .param p10, "profilepic"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker$Comentario;->id:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker$Comentario;->mensaje:Ljava/lang/String;

    .line 26
    iput-object p3, p0, Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker$Comentario;->userid:Ljava/lang/String;

    .line 27
    iput-object p7, p0, Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker$Comentario;->timestamp:Ljava/lang/String;

    .line 28
    iput-object p4, p0, Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker$Comentario;->username:Ljava/lang/String;

    .line 29
    iput-object p5, p0, Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker$Comentario;->name:Ljava/lang/String;

    .line 30
    iput-object p6, p0, Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker$Comentario;->gender:Ljava/lang/String;

    .line 31
    iput-object p8, p0, Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker$Comentario;->image:Ljava/lang/String;

    .line 32
    iput-object p9, p0, Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker$Comentario;->network:Ljava/lang/String;

    .line 33
    iput-object p10, p0, Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker$Comentario;->profilepic:Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method public final getImage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker$Comentario;->image:Ljava/lang/String;

    return-object v0
.end method

.method public final getMensaje()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker$Comentario;->mensaje:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker$Comentario;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getNetwork()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker$Comentario;->network:Ljava/lang/String;

    return-object v0
.end method

.method public final getProfilePic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker$Comentario;->profilepic:Ljava/lang/String;

    return-object v0
.end method

.method public final getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker$Comentario;->userid:Ljava/lang/String;

    return-object v0
.end method
