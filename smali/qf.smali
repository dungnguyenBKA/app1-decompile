.class public final Lqf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzf;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lqf$c;,
        Lqf$b;,
        Lqf$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Model:",
        "Ljava/lang/Object;",
        "Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lzf<",
        "TModel;TData;>;"
    }
.end annotation


# instance fields
.field private final a:Lqf$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqf$a<",
            "TData;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lqf$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lqf$a<",
            "TData;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lqf;->a:Lqf$a;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModel;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "data:image"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public b(Ljava/lang/Object;IILcom/bumptech/glide/load/i;)Lzf$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModel;II",
            "Lcom/bumptech/glide/load/i;",
            ")",
            "Lzf$a<",
            "TData;>;"
        }
    .end annotation

    .line 1
    new-instance p2, Lzf$a;

    new-instance p3, Lxk;

    invoke-direct {p3, p1}, Lxk;-><init>(Ljava/lang/Object;)V

    new-instance p4, Lqf$b;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lqf;->a:Lqf$a;

    invoke-direct {p4, p1, v0}, Lqf$b;-><init>(Ljava/lang/String;Lqf$a;)V

    invoke-direct {p2, p3, p4}, Lzf$a;-><init>(Lcom/bumptech/glide/load/g;Luc;)V

    return-object p2
.end method
