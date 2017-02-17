.class public final Lcl/birdie/transantiagomaster/twitter/TwitterHandler$Mensaje;
.super Ljava/lang/Object;
.source "TwitterHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcl/birdie/transantiagomaster/twitter/TwitterHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Mensaje"
.end annotation


# instance fields
.field estado:I

.field fecha:Ljava/util/Date;

.field mensaje:Ljava/lang/String;

.field userId:Ljava/lang/String;

.field userName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
