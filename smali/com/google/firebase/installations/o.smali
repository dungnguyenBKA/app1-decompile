.class public final Lcom/google/firebase/installations/o;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:J

.field private static final c:Ljava/util/regex/Pattern;

.field private static d:Lcom/google/firebase/installations/o;

.field public static final synthetic e:I


# instance fields
.field private final a:Lp50;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/firebase/installations/o;->b:J

    const-string v0, "\\AA[\\w-]{38}\\z"

    .line 2
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/installations/o;->c:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>(Lp50;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/firebase/installations/o;->a:Lp50;

    return-void
.end method

.method public static c()Lcom/google/firebase/installations/o;
    .locals 2

    .line 1
    invoke-static {}, Lp50;->a()Lp50;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/google/firebase/installations/o;->d:Lcom/google/firebase/installations/o;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lcom/google/firebase/installations/o;

    invoke-direct {v1, v0}, Lcom/google/firebase/installations/o;-><init>(Lp50;)V

    sput-object v1, Lcom/google/firebase/installations/o;->d:Lcom/google/firebase/installations/o;

    .line 4
    :cond_0
    sget-object v0, Lcom/google/firebase/installations/o;->d:Lcom/google/firebase/installations/o;

    return-object v0
.end method

.method static e(Ljava/lang/String;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/installations/o;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/firebase/installations/o;->a:Lp50;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public b()J
    .locals 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0}, Lcom/google/firebase/installations/o;->a()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public d(Li50;)Z
    .locals 8

    .line 1
    invoke-virtual {p1}, Li50;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p1}, Li50;->g()J

    move-result-wide v2

    invoke-virtual {p1}, Li50;->b()J

    move-result-wide v4

    add-long/2addr v4, v2

    .line 3
    invoke-virtual {p0}, Lcom/google/firebase/installations/o;->b()J

    move-result-wide v2

    sget-wide v6, Lcom/google/firebase/installations/o;->b:J

    add-long/2addr v2, v6

    cmp-long p1, v4, v2

    if-gez p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
