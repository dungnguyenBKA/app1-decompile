.class final synthetic Lk20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr20$a;


# static fields
.field private static final a:Lk20;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lk20;

    invoke-direct {v0}, Lk20;-><init>()V

    sput-object v0, Lk20;->a:Lk20;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lr20$a;
    .locals 1

    sget-object v0, Lk20;->a:Lk20;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/util/JsonReader;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lr20;->a(Landroid/util/JsonReader;)Li20$d$d;

    move-result-object p1

    return-object p1
.end method
