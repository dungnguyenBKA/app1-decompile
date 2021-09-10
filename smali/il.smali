.class public final Lil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lil$c;,
        Lil$d;,
        Lil$e;,
        Lil$b;
    }
.end annotation


# static fields
.field private static final a:Lil$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lil$e<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lil$a;

    invoke-direct {v0}, Lil$a;-><init>()V

    sput-object v0, Lil;->a:Lil$e;

    return-void
.end method

.method public static a(ILil$b;)Lk2;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lil$d;",
            ">(I",
            "Lil$b<",
            "TT;>;)",
            "Lk2<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lm2;

    invoke-direct {v0, p0}, Lm2;-><init>(I)V

    .line 2
    sget-object p0, Lil;->a:Lil$e;

    .line 3
    new-instance v1, Lil$c;

    invoke-direct {v1, v0, p1, p0}, Lil$c;-><init>(Lk2;Lil$b;Lil$e;)V

    return-object v1
.end method

.method public static b()Lk2;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lk2<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lm2;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lm2;-><init>(I)V

    new-instance v1, Ljl;

    invoke-direct {v1}, Ljl;-><init>()V

    new-instance v2, Lkl;

    invoke-direct {v2}, Lkl;-><init>()V

    .line 2
    new-instance v3, Lil$c;

    invoke-direct {v3, v0, v1, v2}, Lil$c;-><init>(Lk2;Lil$b;Lil$e;)V

    return-object v3
.end method
