.class public abstract Lvd;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lvd;

.field public static final b:Lvd;

.field public static final c:Lvd;

.field public static final d:Lvd;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lvd$a;

    invoke-direct {v0}, Lvd$a;-><init>()V

    sput-object v0, Lvd;->a:Lvd;

    .line 2
    new-instance v0, Lvd$b;

    invoke-direct {v0}, Lvd$b;-><init>()V

    sput-object v0, Lvd;->b:Lvd;

    .line 3
    new-instance v0, Lvd$c;

    invoke-direct {v0}, Lvd$c;-><init>()V

    sput-object v0, Lvd;->c:Lvd;

    .line 4
    new-instance v0, Lvd$d;

    invoke-direct {v0}, Lvd$d;-><init>()V

    sput-object v0, Lvd;->d:Lvd;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Z
.end method

.method public abstract b()Z
.end method

.method public abstract c(Lcom/bumptech/glide/load/a;)Z
.end method

.method public abstract d(ZLcom/bumptech/glide/load/a;Lcom/bumptech/glide/load/c;)Z
.end method
