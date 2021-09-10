.class public Lva0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqa0$b;


# instance fields
.field private a:Lorg/json/JSONObject;

.field private final b:Lra0;


# direct methods
.method public constructor <init>(Lra0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lva0;->b:Lra0;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lva0;->b:Lra0;

    new-instance v1, Lsa0;

    invoke-direct {v1, p0}, Lsa0;-><init>(Lqa0$b;)V

    invoke-virtual {v0, v1}, Lra0;->c(Lqa0;)V

    return-void
.end method

.method public b(Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lva0;->a:Lorg/json/JSONObject;

    return-void
.end method

.method public c(Lorg/json/JSONObject;Ljava/util/HashSet;J)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    iget-object v0, p0, Lva0;->b:Lra0;

    new-instance v7, Lua0;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lua0;-><init>(Lqa0$b;Ljava/util/HashSet;Lorg/json/JSONObject;J)V

    invoke-virtual {v0, v7}, Lra0;->c(Lqa0;)V

    return-void
.end method

.method public d()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lva0;->a:Lorg/json/JSONObject;

    return-object v0
.end method

.method public e(Lorg/json/JSONObject;Ljava/util/HashSet;J)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    iget-object v0, p0, Lva0;->b:Lra0;

    new-instance v7, Lta0;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lta0;-><init>(Lqa0$b;Ljava/util/HashSet;Lorg/json/JSONObject;J)V

    invoke-virtual {v0, v7}, Lra0;->c(Lqa0;)V

    return-void
.end method
