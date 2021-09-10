.class final synthetic Lw40;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/components/h;


# static fields
.field private static final a:Lw40;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lw40;

    invoke-direct {v0}, Lw40;-><init>()V

    sput-object v0, Lw40;->a:Lw40;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lcom/google/firebase/components/h;
    .locals 1

    sget-object v0, Lw40;->a:Lw40;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/firebase/components/e;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Ly40;->c(Lcom/google/firebase/components/e;)La50;

    move-result-object p1

    return-object p1
.end method
