.class public Lo3;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo3$b;,
        Lo3$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lo3$b;

    invoke-direct {v0, p0}, Lo3$b;-><init>(Lo3;)V

    iput-object v0, p0, Lo3;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lo3;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(I)Ln3;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public b(I)Ln3;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public c()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lo3;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public d(IILandroid/os/Bundle;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
