.class public Lm90;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lr90;

.field private final b:Lr90;

.field private final c:Z

.field private final d:Lp90;

.field private final e:Lq90;


# direct methods
.method private constructor <init>(Lp90;Lq90;Lr90;Lr90;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm90;->d:Lp90;

    iput-object p2, p0, Lm90;->e:Lq90;

    iput-object p3, p0, Lm90;->a:Lr90;

    if-nez p4, :cond_0

    sget-object p1, Lr90;->e:Lr90;

    iput-object p1, p0, Lm90;->b:Lr90;

    goto :goto_0

    :cond_0
    iput-object p4, p0, Lm90;->b:Lr90;

    :goto_0
    iput-boolean p5, p0, Lm90;->c:Z

    return-void
.end method

.method public static a(Lp90;Lq90;Lr90;Lr90;Z)Lm90;
    .locals 9

    const-string v0, "CreativeType is null"

    invoke-static {p0, v0}, Landroidx/core/app/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ImpressionType is null"

    invoke-static {p1, v0}, Landroidx/core/app/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Impression owner is null"

    invoke-static {p2, v0}, Landroidx/core/app/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lr90;->c:Lr90;

    sget-object v1, Lr90;->e:Lr90;

    if-eq p2, v1, :cond_4

    sget-object v1, Lp90;->c:Lp90;

    const-string v2, "ImpressionType/CreativeType can only be defined as DEFINED_BY_JAVASCRIPT if Impression Owner is JavaScript"

    if-ne p0, v1, :cond_1

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    sget-object v1, Lq90;->c:Lq90;

    if-ne p1, v1, :cond_3

    if-eq p2, v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2
    :cond_3
    :goto_1
    new-instance v0, Lm90;

    move-object v3, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move v8, p4

    invoke-direct/range {v3 .. v8}, Lm90;-><init>(Lp90;Lq90;Lr90;Lr90;Z)V

    return-object v0

    .line 3
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Impression owner is none"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public b()Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lm90;->a:Lr90;

    const-string v2, "impressionOwner"

    invoke-static {v0, v2, v1}, Lha0;->e(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lm90;->b:Lr90;

    const-string v2, "mediaEventsOwner"

    invoke-static {v0, v2, v1}, Lha0;->e(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lm90;->d:Lp90;

    const-string v2, "creativeType"

    invoke-static {v0, v2, v1}, Lha0;->e(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lm90;->e:Lq90;

    const-string v2, "impressionType"

    invoke-static {v0, v2, v1}, Lha0;->e(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v1, p0, Lm90;->c:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "isolateVerificationScripts"

    invoke-static {v0, v2, v1}, Lha0;->e(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method
