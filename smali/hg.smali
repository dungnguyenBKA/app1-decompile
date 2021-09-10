.class public Lhg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzf;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhg$a;,
        Lhg$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Model:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lzf<",
        "TModel;TModel;>;"
    }
.end annotation


# static fields
.field private static final a:Lhg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhg<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lhg;

    invoke-direct {v0}, Lhg;-><init>()V

    sput-object v0, Lhg;->a:Lhg;

    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c()Lhg;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lhg<",
            "TT;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lhg;->a:Lhg;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModel;)Z"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method public b(Ljava/lang/Object;IILcom/bumptech/glide/load/i;)Lzf$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModel;II",
            "Lcom/bumptech/glide/load/i;",
            ")",
            "Lzf$a<",
            "TModel;>;"
        }
    .end annotation

    .line 1
    new-instance p2, Lzf$a;

    new-instance p3, Lxk;

    invoke-direct {p3, p1}, Lxk;-><init>(Ljava/lang/Object;)V

    new-instance p4, Lhg$b;

    invoke-direct {p4, p1}, Lhg$b;-><init>(Ljava/lang/Object;)V

    invoke-direct {p2, p3, p4}, Lzf$a;-><init>(Lcom/bumptech/glide/load/g;Luc;)V

    return-object p2
.end method
