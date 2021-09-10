.class Lge$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lil$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lil$b<",
        "Lge<",
        "*>;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Lge;

    invoke-direct {v0}, Lge;-><init>()V

    return-object v0
.end method
