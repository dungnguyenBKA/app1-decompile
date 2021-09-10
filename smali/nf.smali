.class public Lnf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzf;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnf$d;,
        Lnf$a;,
        Lnf$c;,
        Lnf$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lzf<",
        "[BTData;>;"
    }
.end annotation


# instance fields
.field private final a:Lnf$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnf$b<",
            "TData;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnf$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnf$b<",
            "TData;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lnf;->a:Lnf$b;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, [B

    const/4 p1, 0x1

    return p1
.end method

.method public b(Ljava/lang/Object;IILcom/bumptech/glide/load/i;)Lzf$a;
    .locals 1

    .line 1
    check-cast p1, [B

    .line 2
    new-instance p2, Lzf$a;

    new-instance p3, Lxk;

    invoke-direct {p3, p1}, Lxk;-><init>(Ljava/lang/Object;)V

    new-instance p4, Lnf$c;

    iget-object v0, p0, Lnf;->a:Lnf$b;

    invoke-direct {p4, p1, v0}, Lnf$c;-><init>([BLnf$b;)V

    invoke-direct {p2, p3, p4}, Lzf$a;-><init>(Lcom/bumptech/glide/load/g;Luc;)V

    return-object p2
.end method
