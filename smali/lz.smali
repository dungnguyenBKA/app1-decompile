.class public Llz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkz;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljz;)V
    .locals 1

    .line 1
    invoke-static {}, Laz;->f()Laz;

    move-result-object p1

    const-string v0, "Could not register handler for breadcrumbs events."

    invoke-virtual {p1, v0}, Laz;->b(Ljava/lang/String;)V

    return-void
.end method
