.class final synthetic Ls50;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/components/h;


# static fields
.field private static final a:Ls50;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ls50;

    invoke-direct {v0}, Ls50;-><init>()V

    sput-object v0, Ls50;->a:Ls50;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lcom/google/firebase/components/h;
    .locals 1

    sget-object v0, Ls50;->a:Ls50;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/firebase/components/e;)Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lt50;

    const-class v1, Lv50;

    .line 2
    invoke-interface {p1, v1}, Lcom/google/firebase/components/e;->c(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object p1

    invoke-static {}, Lu50;->a()Lu50;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lt50;-><init>(Ljava/util/Set;Lu50;)V

    return-object v0
.end method
