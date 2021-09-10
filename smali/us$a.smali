.class public abstract Lus$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/auto/value/AutoValue$Builder;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Lus;
.end method

.method public abstract b(Lss;)Lus$a;
.end method

.method public abstract c(Ljava/util/List;)Lus$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lts;",
            ">;)",
            "Lus$a;"
        }
    .end annotation
.end method

.method abstract d(Ljava/lang/Integer;)Lus$a;
.end method

.method abstract e(Ljava/lang/String;)Lus$a;
.end method

.method public abstract f(Lxs;)Lus$a;
.end method

.method public abstract g(J)Lus$a;
.end method

.method public abstract h(J)Lus$a;
.end method

.method public i(I)Lus$a;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lus$a;->d(Ljava/lang/Integer;)Lus$a;

    return-object p0
.end method

.method public j(Ljava/lang/String;)Lus$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lus$a;->e(Ljava/lang/String;)Lus$a;

    return-object p0
.end method
