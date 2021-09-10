.class Ly4$b;
.super Ly4$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ly4$f;-><init>()V

    return-void
.end method

.method constructor <init>(Ly4$b;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Ly4$f;-><init>(Ly4$f;)V

    return-void
.end method


# virtual methods
.method public c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
