.class public final Ln90;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ls90;

.field private final b:Landroid/webkit/WebView;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lt90;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lt90;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Lo90;


# direct methods
.method private constructor <init>(Ls90;Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lo90;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls90;",
            "Landroid/webkit/WebView;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lt90;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lo90;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Ln90;->c:Ljava/util/List;

    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, p0, Ln90;->d:Ljava/util/Map;

    iput-object p1, p0, Ln90;->a:Ls90;

    iput-object p2, p0, Ln90;->b:Landroid/webkit/WebView;

    const/4 p1, 0x0

    iput-object p1, p0, Ln90;->e:Ljava/lang/String;

    iput-object p7, p0, Ln90;->h:Lo90;

    iput-object p5, p0, Ln90;->g:Ljava/lang/String;

    iput-object p6, p0, Ln90;->f:Ljava/lang/String;

    return-void
.end method

.method public static a(Ls90;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)Ln90;
    .locals 8

    const-string p2, "Partner is null"

    invoke-static {p0, p2}, Landroidx/core/app/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "WebView is null"

    invoke-static {p1, p2}, Landroidx/core/app/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p2, Ln90;

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v7, Lo90;->c:Lo90;

    const/4 v6, 0x0

    const/4 v5, 0x0

    move-object v0, p2

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Ln90;-><init>(Ls90;Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lo90;)V

    return-object p2
.end method


# virtual methods
.method public b()Lo90;
    .locals 1

    iget-object v0, p0, Ln90;->h:Lo90;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ln90;->g:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ln90;->f:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lt90;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ln90;->d:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ln90;->e:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ls90;
    .locals 1

    iget-object v0, p0, Ln90;->a:Ls90;

    return-object v0
.end method

.method public h()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lt90;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ln90;->c:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public i()Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Ln90;->b:Landroid/webkit/WebView;

    return-object v0
.end method
