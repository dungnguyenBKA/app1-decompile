.class public Lrf$e;
.super Lrf$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrf$a<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lrf$e$a;

    invoke-direct {v0}, Lrf$e$a;-><init>()V

    invoke-direct {p0, v0}, Lrf$a;-><init>(Lrf$d;)V

    return-void
.end method
