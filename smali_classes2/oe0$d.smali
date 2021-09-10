.class final Loe0$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lje0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Loe0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lje0<",
        "Ljava/lang/Throwable;",
        ">;"
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
.method public a(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    .line 2
    new-instance v0, Lfe0;

    invoke-direct {v0, p1}, Lfe0;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0}, Lmf0;->f(Ljava/lang/Throwable;)V

    return-void
.end method
