.class public final Lp40;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll40;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp40$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ll40<",
        "Lp40;",
        ">;"
    }
.end annotation


# static fields
.field private static final e:Lg40;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg40<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final f:Li40;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li40<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final g:Li40;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li40<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final h:Lp40$b;

.field public static final synthetic i:I


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lg40<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Li40<",
            "*>;>;"
        }
    .end annotation
.end field

.field private c:Lg40;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg40<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Lm40;->b()Lg40;

    move-result-object v0

    sput-object v0, Lp40;->e:Lg40;

    .line 2
    invoke-static {}, Ln40;->b()Li40;

    move-result-object v0

    sput-object v0, Lp40;->f:Li40;

    .line 3
    invoke-static {}, Lo40;->b()Li40;

    move-result-object v0

    sput-object v0, Lp40;->g:Li40;

    .line 4
    new-instance v0, Lp40$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lp40$b;-><init>(Lp40$a;)V

    sput-object v0, Lp40;->h:Lp40$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lp40;->a:Ljava/util/Map;

    .line 3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lp40;->b:Ljava/util/Map;

    .line 4
    sget-object v2, Lp40;->e:Lg40;

    iput-object v2, p0, Lp40;->c:Lg40;

    const/4 v2, 0x0

    .line 5
    iput-boolean v2, p0, Lp40;->d:Z

    .line 6
    const-class v2, Ljava/lang/String;

    sget-object v3, Lp40;->f:Li40;

    .line 7
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    const-class v2, Ljava/lang/Boolean;

    sget-object v3, Lp40;->g:Li40;

    .line 10
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    const-class v2, Ljava/util/Date;

    sget-object v3, Lp40;->h:Lp40$b;

    .line 13
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic a(Lp40;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lp40;->a:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic b(Lp40;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lp40;->b:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic c(Lp40;)Lg40;
    .locals 0

    .line 1
    iget-object p0, p0, Lp40;->c:Lg40;

    return-object p0
.end method

.method static synthetic d(Lp40;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lp40;->d:Z

    return p0
.end method


# virtual methods
.method public e()Ld40;
    .locals 1

    .line 1
    new-instance v0, Lp40$a;

    invoke-direct {v0, p0}, Lp40$a;-><init>(Lp40;)V

    return-object v0
.end method

.method public f(Z)Lp40;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lp40;->d:Z

    return-object p0
.end method

.method public g(Ljava/lang/Class;Lg40;)Ll40;
    .locals 1

    .line 1
    iget-object v0, p0, Lp40;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object p2, p0, Lp40;->b:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
