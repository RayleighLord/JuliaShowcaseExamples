### A Pluto.jl notebook ###
# v0.19.11

using Markdown
using InteractiveUtils

# ╔═╡ 58fdf9e2-8dc6-43e2-9798-8e992dac2053
begin
	using PlutoUI
	PlutoUI.TableOfContents(title="Tabla de Contenidos", depth=3, aside=true, indent=true)
end

# ╔═╡ 719af058-3505-4ede-be04-557a448d8ade
html"""
<div class="banner-background">
</div>

<div class="nb-intro">
	<div class="header-box"> 
		<p class="nb-intro-header"> Tema 1 </p>
		<p class="nb-intro-title"> Título de la sección dentro del tema a tratar</p>
		<p style="text-align:center;"> 
			<img src="https://github.com/RayleighLord/Resources/blob/main/img/logos/logo.png?raw=true" alt="RayleighLord"
			width="30%"
			class="logo">
		</p>
	</div>
</div>

<style>

.banner-background {
	position: absolute;
	top: -550px;
	left: -40vw;
	height: 550px;
	width: 150vw;
	background-color: #212529;
	opacity: 1;
}

.nb-intro {
	position: absolute;
	top: -550px;
	left: -8px;
	height: 550px;
	width: calc(100% + 8px);
	background-image: #212529;
}

.header-box {
	display: flex;
	flex-direction: column;
	align-items: center;
	justify-content: center;
	gap: 20px;

	height: 500px;
	margin-top: 20px;
	padding: 0px 10px 0px 10px;
	border: 5px solid #adb5bd;
	border-radius: 50px;
	box-shadow: 0px 5px 20px rgba(255, 255, 255, 0.25);
	text-align: center;
	position: relative;
	transition: all 0.3s;
}

.header-box:hover {
	transform: translateY(-5px);	
	box-shadow: 0px 10px 30px rgba(255, 255, 255, 0.3);
}

.nb-intro-header {
	margin: 0;
	color: #adb5bd;
	font-family: Vollkorn, serif;
	font-size: 32px;
	font-weight: 500;
	font-feature-settings: 'lnum', 'pnum';
}

.nb-intro-title {
	margin: 0;
	margin-bottom: 15px;
	color: #f1f3f5;
	font-family: Vollkorn, serif;
	font-size: 50px;
	font-weight: 600;
	font-feature-settings: 'lnum', 'pnum';
	line-height: 1.2;
}

body {
	overflow-x: hidden;
	box-sizing: border-box;
}

pluto-cell:first-child {
	margin-top: 550px;
}

main preamble {
    height: 0px;
    margin: 0px;
    padding: 0px;
}

</style>
"""

# ╔═╡ 82282db6-240f-4318-a475-f91229aa6c76
note(text) = Markdown.MD(Markdown.Admonition("note", "Nota", [text]));

# ╔═╡ 19c98e87-2114-4362-aa55-4859c20ffc27
hint(text) = Markdown.MD(Markdown.Admonition("hint", "Pista 🔎", [text]));

# ╔═╡ 80e9a650-57d9-4e11-acad-aa0f5894ef34
almost(text) = Markdown.MD(Markdown.Admonition("warning", "¡Ya casi lo tienes!", [text]));

# ╔═╡ 7a89b51b-51d7-4090-8a9f-2585363183fc
still_missing(text=md"Sustituye `missing` por tu respuesta.") = Markdown.MD(Markdown.Admonition("warning", "Completa el ejercicio 🧐", [text]));

# ╔═╡ a9cd5b48-921f-4b48-8c63-5060c5d7c1d5
keep_working(text=md"La respuesta todavía no es correcta.") = Markdown.MD(Markdown.Admonition("danger", "¡Sigue intentándolo!", [text]));

# ╔═╡ 20089647-2ac5-405f-b8ba-aa5dd1733271
good = [md"¡Buen trabajo! 🎉", md"¡Correcto! 🎉", md"¡Bien hecho! 👍", md"La respuesta es correcta 🎉", md"Continúa a la siguiente pregunta 👍", md"¡Enhorabuena! 🎉",];

# ╔═╡ 8fd2f719-294a-41cc-bb47-5afbbc2bfa9c
correct(text=rand(good)) = Markdown.MD(Markdown.Admonition("correct", "Lo conseguiste!", [text]));

# ╔═╡ 3f6aec31-e108-4caf-bec1-c4ae57b6b72c
not_defined(variable_name) = Markdown.MD(Markdown.Admonition("danger", "¡Cuidado!", [md"Aségurate de haber definido una variable llamada **$(Markdown.Code(string(variable_name)))**"]));

# ╔═╡ 5ec67974-c7dc-43d6-a0ef-b804ab1bf64b
todo(text) = HTML("""<div
	style="background: rgb(220, 200, 255); padding: 2em; border-radius: 1em;"
	><h2>TODO</h2>$(repr(MIME"text/html"(), text))</div>""");

# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
PlutoUI = "7f904dfe-b85e-4ff6-b463-dae2292396a8"

[compat]
PlutoUI = "~0.7.39"
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

julia_version = "1.8.0"
manifest_format = "2.0"
project_hash = "6ff2529dffd0652d0349be095d4d180abf958f56"

[[deps.AbstractPlutoDingetjes]]
deps = ["Pkg"]
git-tree-sha1 = "8eaf9f1b4921132a4cff3f36a1d9ba923b14a481"
uuid = "6e696c72-6542-2067-7265-42206c756150"
version = "1.1.4"

[[deps.ArgTools]]
uuid = "0dad84c5-d112-42e6-8d28-ef12dabb789f"
version = "1.1.1"

[[deps.Artifacts]]
uuid = "56f22d72-fd6d-98f1-02f0-08ddc0907c33"

[[deps.Base64]]
uuid = "2a0f44e3-6c83-55bd-87e4-b1978d98bd5f"

[[deps.ColorTypes]]
deps = ["FixedPointNumbers", "Random"]
git-tree-sha1 = "eb7f0f8307f71fac7c606984ea5fb2817275d6e4"
uuid = "3da002f7-5984-5a60-b8a6-cbb66c0b333f"
version = "0.11.4"

[[deps.CompilerSupportLibraries_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "e66e0078-7015-5450-92f7-15fbd957f2ae"
version = "0.5.2+0"

[[deps.Dates]]
deps = ["Printf"]
uuid = "ade2ca70-3891-5945-98fb-dc099432e06a"

[[deps.Downloads]]
deps = ["ArgTools", "FileWatching", "LibCURL", "NetworkOptions"]
uuid = "f43a241f-c20a-4ad4-852c-f6b1247861c6"
version = "1.6.0"

[[deps.FileWatching]]
uuid = "7b1f6079-737a-58dc-b8bc-7a2ca5c1b5ee"

[[deps.FixedPointNumbers]]
deps = ["Statistics"]
git-tree-sha1 = "335bfdceacc84c5cdf16aadc768aa5ddfc5383cc"
uuid = "53c48c17-4a7d-5ca2-90c5-79b7896eea93"
version = "0.8.4"

[[deps.Hyperscript]]
deps = ["Test"]
git-tree-sha1 = "8d511d5b81240fc8e6802386302675bdf47737b9"
uuid = "47d2ed2b-36de-50cf-bf87-49c2cf4b8b91"
version = "0.0.4"

[[deps.HypertextLiteral]]
deps = ["Tricks"]
git-tree-sha1 = "c47c5fa4c5308f27ccaac35504858d8914e102f9"
uuid = "ac1192a8-f4b3-4bfe-ba22-af5b92cd3ab2"
version = "0.9.4"

[[deps.IOCapture]]
deps = ["Logging", "Random"]
git-tree-sha1 = "f7be53659ab06ddc986428d3a9dcc95f6fa6705a"
uuid = "b5f81e59-6552-4d32-b1f0-c071b021bf89"
version = "0.2.2"

[[deps.InteractiveUtils]]
deps = ["Markdown"]
uuid = "b77e0a4c-d291-57a0-90e8-8db25a27a240"

[[deps.JSON]]
deps = ["Dates", "Mmap", "Parsers", "Unicode"]
git-tree-sha1 = "3c837543ddb02250ef42f4738347454f95079d4e"
uuid = "682c06a0-de6a-54ab-a142-c8b1cf79cde6"
version = "0.21.3"

[[deps.LibCURL]]
deps = ["LibCURL_jll", "MozillaCACerts_jll"]
uuid = "b27032c2-a3e7-50c8-80cd-2d36dbcbfd21"
version = "0.6.3"

[[deps.LibCURL_jll]]
deps = ["Artifacts", "LibSSH2_jll", "Libdl", "MbedTLS_jll", "Zlib_jll", "nghttp2_jll"]
uuid = "deac9b47-8bc7-5906-a0fe-35ac56dc84c0"
version = "7.84.0+0"

[[deps.LibGit2]]
deps = ["Base64", "NetworkOptions", "Printf", "SHA"]
uuid = "76f85450-5226-5b5a-8eaa-529ad045b433"

[[deps.LibSSH2_jll]]
deps = ["Artifacts", "Libdl", "MbedTLS_jll"]
uuid = "29816b5a-b9ab-546f-933c-edad1886dfa8"
version = "1.10.2+0"

[[deps.Libdl]]
uuid = "8f399da3-3557-5675-b5ff-fb832c97cbdb"

[[deps.LinearAlgebra]]
deps = ["Libdl", "libblastrampoline_jll"]
uuid = "37e2e46d-f89d-539d-b4ee-838fcccc9c8e"

[[deps.Logging]]
uuid = "56ddb016-857b-54e1-b83d-db4d58db5568"

[[deps.Markdown]]
deps = ["Base64"]
uuid = "d6f4376e-aef5-505a-96c1-9c027394607a"

[[deps.MbedTLS_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "c8ffd9c3-330d-5841-b78e-0817d7145fa1"
version = "2.28.0+0"

[[deps.Mmap]]
uuid = "a63ad114-7e13-5084-954f-fe012c677804"

[[deps.MozillaCACerts_jll]]
uuid = "14a3606d-f60d-562e-9121-12d972cd8159"
version = "2022.2.1"

[[deps.NetworkOptions]]
uuid = "ca575930-c2e3-43a9-ace4-1e988b2c1908"
version = "1.2.0"

[[deps.OpenBLAS_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "Libdl"]
uuid = "4536629a-c528-5b80-bd46-f80d51c5b363"
version = "0.3.20+0"

[[deps.Parsers]]
deps = ["Dates"]
git-tree-sha1 = "3d5bf43e3e8b412656404ed9466f1dcbf7c50269"
uuid = "69de0a69-1ddd-5017-9359-2bf0b02dc9f0"
version = "2.4.0"

[[deps.Pkg]]
deps = ["Artifacts", "Dates", "Downloads", "LibGit2", "Libdl", "Logging", "Markdown", "Printf", "REPL", "Random", "SHA", "Serialization", "TOML", "Tar", "UUIDs", "p7zip_jll"]
uuid = "44cfe95a-1eb2-52ea-b672-e2afdf69b78f"
version = "1.8.0"

[[deps.PlutoUI]]
deps = ["AbstractPlutoDingetjes", "Base64", "ColorTypes", "Dates", "Hyperscript", "HypertextLiteral", "IOCapture", "InteractiveUtils", "JSON", "Logging", "Markdown", "Random", "Reexport", "UUIDs"]
git-tree-sha1 = "8d1f54886b9037091edf146b517989fc4a09efec"
uuid = "7f904dfe-b85e-4ff6-b463-dae2292396a8"
version = "0.7.39"

[[deps.Printf]]
deps = ["Unicode"]
uuid = "de0858da-6303-5e67-8744-51eddeeeb8d7"

[[deps.REPL]]
deps = ["InteractiveUtils", "Markdown", "Sockets", "Unicode"]
uuid = "3fa0cd96-eef1-5676-8a61-b3b8758bbffb"

[[deps.Random]]
deps = ["SHA", "Serialization"]
uuid = "9a3f8284-a2c9-5f02-9a11-845980a1fd5c"

[[deps.Reexport]]
git-tree-sha1 = "45e428421666073eab6f2da5c9d310d99bb12f9b"
uuid = "189a3867-3050-52da-a836-e630ba90ab69"
version = "1.2.2"

[[deps.SHA]]
uuid = "ea8e919c-243c-51af-8825-aaa63cd721ce"
version = "0.7.0"

[[deps.Serialization]]
uuid = "9e88b42a-f829-5b0c-bbe9-9e923198166b"

[[deps.Sockets]]
uuid = "6462fe0b-24de-5631-8697-dd941f90decc"

[[deps.SparseArrays]]
deps = ["LinearAlgebra", "Random"]
uuid = "2f01184e-e22b-5df5-ae63-d93ebab69eaf"

[[deps.Statistics]]
deps = ["LinearAlgebra", "SparseArrays"]
uuid = "10745b16-79ce-11e8-11f9-7d13ad32a3b2"

[[deps.TOML]]
deps = ["Dates"]
uuid = "fa267f1f-6049-4f14-aa54-33bafae1ed76"
version = "1.0.0"

[[deps.Tar]]
deps = ["ArgTools", "SHA"]
uuid = "a4e569a6-e804-4fa4-b0f3-eef7a1d5b13e"
version = "1.10.0"

[[deps.Test]]
deps = ["InteractiveUtils", "Logging", "Random", "Serialization"]
uuid = "8dfed614-e22c-5e08-85e1-65c5234f0b40"

[[deps.Tricks]]
git-tree-sha1 = "6bac775f2d42a611cdfcd1fb217ee719630c4175"
uuid = "410a4b4d-49e4-4fbc-ab6d-cb71b17b3775"
version = "0.1.6"

[[deps.UUIDs]]
deps = ["Random", "SHA"]
uuid = "cf7118a7-6976-5b1a-9a39-7adc72f591a4"

[[deps.Unicode]]
uuid = "4ec0a83e-493e-50e2-b9ac-8f72acf5a8f5"

[[deps.Zlib_jll]]
deps = ["Libdl"]
uuid = "83775a58-1f1d-513f-b197-d71354ab007a"
version = "1.2.12+3"

[[deps.libblastrampoline_jll]]
deps = ["Artifacts", "Libdl", "OpenBLAS_jll"]
uuid = "8e850b90-86db-534c-a0d3-1478176c7d93"
version = "5.1.1+0"

[[deps.nghttp2_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "8e850ede-7688-5339-a07c-302acd2aaf8d"
version = "1.48.0+0"

[[deps.p7zip_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "3f19e933-33d8-53b3-aaab-bd5110c3b7a0"
version = "17.4.0+0"
"""

# ╔═╡ Cell order:
# ╠═719af058-3505-4ede-be04-557a448d8ade
# ╠═58fdf9e2-8dc6-43e2-9798-8e992dac2053
# ╟─82282db6-240f-4318-a475-f91229aa6c76
# ╟─19c98e87-2114-4362-aa55-4859c20ffc27
# ╟─80e9a650-57d9-4e11-acad-aa0f5894ef34
# ╟─7a89b51b-51d7-4090-8a9f-2585363183fc
# ╟─a9cd5b48-921f-4b48-8c63-5060c5d7c1d5
# ╟─20089647-2ac5-405f-b8ba-aa5dd1733271
# ╟─8fd2f719-294a-41cc-bb47-5afbbc2bfa9c
# ╟─3f6aec31-e108-4caf-bec1-c4ae57b6b72c
# ╟─5ec67974-c7dc-43d6-a0ef-b804ab1bf64b
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
